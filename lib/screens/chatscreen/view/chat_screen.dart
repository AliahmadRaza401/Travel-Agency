import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/screens/chatscreen/App_SizedBox.dart';
import 'package:travel_agency/utils/AppText.dart';
import 'package:travel_agency/utils/AppTextField.dart';
import 'package:travel_agency/utils/colors.dart';

import '../controller/chat_controller.dart';
import '../controller/chat_request.dart';
import '../controller/chat_service.dart';

class ChatPage extends StatefulWidget {
  bool isSkip;
  ChatPage({
    super.key,
    this.isSkip = false,
  });

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // final scaffoldKey = GlobalKey<ScaffoldState>();
  // ChatController chatController = Get.put(ChatController());
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [];
  final ChatService _chatService = ChatService();
  bool _isLoading = false;
  int _messageCount = 0;
  int? _loadingMessageIndex;

  // void _sendMessage() async {
  //   // if (widget.isSkip = true && _messageCount > 2) {
  //   //   customSnackBar(title: "Please Login to use more");
  //   //   return;
  //   // }
  //   if (_controller.text.isEmpty) return;
  //   setState(() {
  //     _messages.add(Message(role: "user", content: _controller.text));
  //     _isLoading = true;
  //     _messageCount++;
  //   });
  //   final response = await _chatService.request(_controller.text);
  //   setState(() {
  //     if (response != null) {
  //       _messages.add(Message(role: "system", content: response));
  //     }
  //     _isLoading = false;
  //   });
  //
  //   _controller.clear();
  // }
  void _sendMessage() async {
    if (_controller.text.isEmpty) return;

    final messageIndex = _messages.length;
    setState(() {
      _messages.add(Message(role: "user", content: _controller.text));
      _isLoading = true;
      _loadingMessageIndex = messageIndex;
    });

    final response = await _chatService.request(_controller.text);
    setState(() {
      if (response != null) {
        _messages.add(Message(role: "system", content: response));
      }
      _isLoading = false;
      _loadingMessageIndex = null;
    });

    _controller.clear();
  }

  @override
  void initState() {
    super.initState();
    // if(!widget.isSkip){
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      // drawer: CustomDrawer(),
      // backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          // PrimaryAppBar(
          //   titleText: 'Lenny',
          //   appbarColor: AppColors.backgroundColor,
          //   isPrefix: true,
          //   isSuffix: false,
          //   isActions: true,
          //   prefixIconImage: AppImages.menuIcon,
          //   actions: [
          //     widget.isSkip
          //         ? AppButton(
          //             buttonName: "Login",
          //             buttonRadius: BorderRadius.circular(10)0,
          //             buttonColor: AppColors.PRIMARY_COLOR,
          //             buttonHeight: 35,
          //             buttonWidth: 80,
          //             textColor: AppColors.WHITE_COLOR,
          //             onTap: () {
          //               Get.offAll(LoginScreen());
          //             })
          //         : Obx(() => chatController.isLoading.isTrue
          //             ? CircularProgressIndicator()
          //             : AppButton(
          //                 buttonName: "Save Chat",
          //                 buttonRadius: BorderRadius.circular(10)0,
          //                 buttonColor: AppColors.PRIMARY_COLOR,
          //                 buttonHeight: 35,
          //                 buttonWidth: 100,
          //                 textColor: AppColors.WHITE_COLOR,
          //                 onTap: () {
          //                   chatController.saveChat(messages: _messages);
          //                 },
          //               ))
          //   ],
          //   prefixOnTap: () {
          //     scaffoldKey.currentState!.openDrawer();
          //   },
          // ),

          Expanded(
            child: _messages.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ai_img.jpg",
                        height: Get.height * 0.3,
                      ),
                      Text(
                        "Ask Anything",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  )
                : ListView.builder(
                    itemCount: _messages.length + (_isLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (_isLoading && index == _messages.length) {
                        return ListTile(
                          title: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 14,
                                backgroundImage: const AssetImage(
                                    "assets/images/button.png"),
                              ),
                              hSizedBox(width: 5),
                              AppText(
                                  text: "Ai",
                                  color: KColors.kBlack.withOpacity(0.7),
                                  fontWeight: FontWeight.w600),
                              hSizedBox(width: 5),
                              CircularProgressIndicator(),
                            ],
                          ),
                        );
                      }
                      final message = _messages[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 14,
                                  backgroundImage: message.role == 'user'
                                      ? null
                                      : const AssetImage(
                                          "assets/images/button.png",
                                        ),
                                ),
                                hSizedBox(width: 5),
                                AppText(
                                    text:
                                        message.role == 'user' ? "" : "Ai Boot",
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w600),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Align(
                              alignment: message.role == 'user'
                                  ? Alignment.topRight
                                  : Alignment.centerLeft,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: message.role == 'user'
                                      ? KColors.kPrimary
                                      : KColors.kPrimary,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: AppText(
                                  text: message.content,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
          ),
          _isLoading
              ? CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.red
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppTextField(
                            controller: _controller,
                            borderRadius: 100,
                            isPrefix: false,
                            hint: 'Write your message',
                          ),
                        ),
                        hSizedBox(),
                        GestureDetector(
                          onTap: _sendMessage,
                          child: Container(
                            // padding: AppPaddings.defaultPadding,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: KColors.kPrimary
                            ),
                            child: Image.asset(
                              "assets/images/send.png",
                              color: KColors.kPrimary,
                              scale: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
          _isLoading ? vSizedBox() : vSizedBox(height: 10)
        ],
      ),
    );
  }

  buttonRow({
    String? text1,
    String? text2,
    VoidCallback? onTap1,
    VoidCallback? onTap2,
  }) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onTap1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: KColors.kPrimary.withOpacity(0.3),
                ),
              ),
              child: AppText(text: text1!, textAlign: TextAlign.center),
            ),
          ),
        ),
        hSizedBox(),
        Expanded(
          child: GestureDetector(
            onTap: onTap2,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: KColors.kPrimary.withOpacity(0.3),
                ),
              ),
              child: AppText(text: text2!, textAlign: TextAlign.center),
            ),
          ),
        )
      ],
    );
  }
}
