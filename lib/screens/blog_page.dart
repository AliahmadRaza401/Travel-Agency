import 'package:travel_agency/screens/home_screen_controller.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

import 'home_screen_modal.dart';

class BlogPage extends StatelessWidget {
  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());
  BlogPage({super.key});
  final Cities? data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Details",
        actions: [],
      ),
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(kWidth(.04)),
                      child: Image.network(
                        data?.image ?? "",
                        height: kHeight(.35),
                        width: kWidth(.9),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: kHeight(.26),
                        left: kWidth(.08),
                      ),
                      child: SizedBox(
                        width: kWidth(.7),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: data?.title ?? "",
                                    textStyle: KTextStyles().normal(
                                        textColor: KColors.kWhite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                heightBox(.005),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: KColors.kWhite,
                                    ),
                                    CustomText(
                                        text: data?.city ?? "",
                                        textStyle: KTextStyles().normal(
                                            textColor: KColors.kWhite,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.share,
                                  color: KColors.kWhite,
                                ),
                                widthBox(.01),
                                const Icon(
                                  Icons.favorite_outline,
                                  color: KColors.kWhite,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.11),
                  width: kWidth(.9),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const Citybox();
                      },
                      separatorBuilder: (context, index) {
                        return widthBox(.06);
                      },
                      itemCount: 4),
                ),
                heightBox(.02),
                CustomText(
                    alignText: TextAlign.left,
                    maxLines: 20,
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odioLorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odio  ",
                    textStyle: KTextStyles().normal(
                      fontSize: 12,
                      textColor: KColors.kTextColor,
                    )),
                heightBox(.02),
                const CustomRichText(
                    normalColor: KColors.kTextColor,
                    normalFontSize: 12,
                    focusedFontSize: 12,
                    maxLines: 20,
                    focusedColor: KColors.kPrimary,
                    focusPosition: FocusPosition.end,
                    normalText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odioLorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odio  ",
                    focusedText: "Read More"),
                heightBox(.04),
                CustomText(
                    text: "Gallery",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, fontWeight: FontWeight.w600)),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.15),
                  width: kWidth(.9),
                  child: ListView.separated(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Gallerybox(
                          images: data?.gallery ?? [],
                          index: index,
                        ));
                      },
                      separatorBuilder: (context, index) => widthBox(.02),
                      itemCount: data?.gallery.length ?? 0),
                ),
                heightBox(.02),
                CustomText(
                    text: "Location",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, fontWeight: FontWeight.w600)),
                heightBox(.02),
                Image.asset(
                  "assets/images/maps.png",
                  height: kHeight(.25),
                  width: kWidth(.9),
                ),
                heightBox(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Gallerybox extends StatelessWidget {
  final List images;
  final int index;
  const Gallerybox({
    super.key,
    required this.index,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kWidth(.04)),
      child: Image.network(
        images[index],
        height: kHeight(.12),
        width: kWidth(.28),
        fit: BoxFit.fill,
      ),
    );
  }
}

class Citybox extends StatelessWidget {
  const Citybox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            radius: kHeight(.04),
            foregroundImage: const AssetImage("assets/images/blogcity.png"),
          ),
          heightBox(.005),
          CustomText(
              text: "Colosseum",
              textStyle: KTextStyles()
                  .normal(fontSize: 10, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
