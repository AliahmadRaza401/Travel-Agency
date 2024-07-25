import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/screens/chatscreen/App_SizedBox.dart';
import 'package:travel_agency/utils/AppText.dart';
import 'package:travel_agency/utils/AppTextField.dart';
import 'package:travel_agency/utils/app_loader.dart';
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
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [];
  final ChatService _chatService = ChatService();
  bool _isLoading = false;
  ScrollController _scrollController = ScrollController();

  void _sendMessage() async {
    if (_controller.text.isEmpty) return;

    setState(() {
      _messages.add(Message(role: "user", content: _controller.text));
      _isLoading = true;
    });

    final response = await _chatService.request(_controller.text);
    setState(() {
      if (response != null) {
        _messages.add(Message(role: "system", content: response));
      }
      _isLoading = false;
    });

    _controller.clear();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    // Additional initialization if needed
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: _messages.isEmpty
                ? Center(
                    child: Column(
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
                    ),
                  )
                : ListView.builder(
                    controller: _scrollController,
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
                              customLoader(),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
                  _isLoading
                      ? Container(width: Get.width * 0.1, child: customLoader())
                      : GestureDetector(
                          onTap: _sendMessage,
                          child: Container(
                            width: Get.width * 0.1,
                            padding: EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/send.png",
                              color: KColors.kPrimary,
                              scale: 15,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
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
