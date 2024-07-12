import 'package:travel_agency/screens/home_screen_controller.dart';

import '../widgets/widgets_imports.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(.05),
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: kHeight(.05),
                  ),
                ),
                heightBox(.04),
                Container(
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: KColors.kGrey.withOpacity(.2),
                            blurRadius: 5,
                            offset: const Offset(1, 1))
                      ],
                      color: KColors.kWhite,
                      borderRadius: BorderRadius.circular(kWidth(.04))),
                  child: TextField(
                    cursorErrorColor: KColors.kGrey,
                    controller: TextEditingController(),
                    style: const TextStyle(color: KColors.kGrey),
                    cursorColor: KColors.kGrey,
                    decoration: InputDecoration(
                        focusColor: KColors.kGrey,
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search,
                          size: kHeight(.04),
                          color: KColors.kBlack,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                heightBox(.02),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/blogpage");
                  },
                  child: CustomText(
                      text: "Categories",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.14),
                  width: kWidth(1),
                  child: ListView.separated(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const CategoryBox();
                      },
                      separatorBuilder: (context, index) => widthBox(.03),
                      itemCount: 8),
                ),
                heightBox(.02),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/retrievebooking");
                  },
                  child: CustomText(
                      text: "Cities",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                heightBox(.02),
                Obx(() {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    itemCount: homeScreenController.travellingList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.82,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Center(
                          child: HomeCityBox(
                        controller: homeScreenController,
                        index: index,
                      ));
                    },
                  );
                }),
                heightBox(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeCityBox extends StatelessWidget {
  final HomeScreenController controller;
  final int index;
  const HomeCityBox({
    super.key,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(controller.travellingList[index]);
        Get.toNamed("/blogpage", arguments: controller.travellingList[index]);
      },
      child: Container(
        width: kWidth(.42),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: KColors.kGrey.withOpacity(.2), blurRadius: 5),
            ],
            color: KColors.kWhite,
            borderRadius: BorderRadius.circular(kWidth(.04))),
        padding: EdgeInsets.all(kWidth(.02)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kWidth(.04)),
                  child: Image.network(
                    controller.travellingList[index].image,
                    height: kHeight(.15),
                    width: kWidth(.4),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: kWidth(.02), top: kWidth(.02)),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: kHeight(.02),
                      backgroundColor: KColors.kWhite,
                      child: const Icon(
                        Icons.favorite_outline,
                        color: KColors.kBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            heightBox(.01),
            CustomText(
                text: controller.travellingList[index].title.toString(),
                textStyle: KTextStyles().normal(
                    textColor: KColors.kTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: KColors.kGrey,
                ),
                SizedBox(
                  width: kWidth(.3),
                  child: CustomText(
                      alignText: TextAlign.left,
                      maxLines: 2,
                      text: controller.travellingList[index].city.toString(),
                      textStyle: KTextStyles()
                          .normal(fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: KColors.kWhite,
            radius: kHeight(.04),
            child: Image.asset(
              "assets/images/Group.png",
              height: kHeight(.04),
            ),
          ),
          heightBox(.01),
          CustomText(
              text: "Hotels",
              textStyle: KTextStyles()
                  .normal(fontSize: 12, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
