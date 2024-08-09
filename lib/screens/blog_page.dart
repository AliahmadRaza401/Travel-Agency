import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:travel_agency/screens/home_screen_controller.dart';
import 'package:travel_agency/utils/app_loader.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

import 'home_screen_modal.dart';

class BlogPage extends StatelessWidget {
  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());

  BlogPage({super.key});
  final Cities? data = Get.arguments;
  final CameraPosition _initialPosition = const CameraPosition(
    target: LatLng(37.77483, -122.41942), // San Francisco
    zoom: 12.0,
  );
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
          child: GetBuilder<HomeScreenController>(
              init: HomeScreenController(),
              builder: (controller) {
                return SingleChildScrollView(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: data?.title ?? "",
                                          textStyle: KTextStyles().normal(
                                              textColor: KColors.kWhite,
                                              fontSize: 16,
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
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () async {
                                          await Share.share('');
                                        },
                                        child: const Icon(
                                          Icons.share,
                                          color: KColors.kWhite,
                                        ),
                                      ),
                                      widthBox(.01),
                                      GestureDetector(
                                        onTap: () {
                                          controller.toggleFavorite(data!);
                                        },
                                        child: Icon(
                                          data!.isFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_outline,
                                          color: data!.isFavorite
                                              ? Colors.red
                                              : KColors.kWhite,
                                        ),
                                      ),
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
                            fontSize: 14,
                            textColor: KColors.kTextColor,
                          )),
                      heightBox(.02),
                      const CustomRichText(
                          normalColor: KColors.kTextColor,
                          normalFontSize: 14,
                          focusedFontSize: 14,
                          maxLines: 20,
                          focusedColor: KColors.kPrimary,
                          focusPosition: FocusPosition.end,
                          normalText:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odioLorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odio  ",
                          focusedText: "Read More"),
                      heightBox(.04),
                      CustomText(
                          text: "Gallery",
                          textStyle: KTextStyles().normal(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      heightBox(.02),
                      SizedBox(
                        height: kHeight(.15),
                        width: kWidth(.9),
                        child: Obx(() {
                          return controller.isLoading.value
                              ? Center(
                                  child: SizedBox(
                                      width: Get.width * 0.1,
                                      child: customLoader()))
                              : ListView.separated(
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
                                  separatorBuilder: (context, index) =>
                                      widthBox(.02),
                                  itemCount: data?.gallery.length ?? 0);
                        }),
                      ),
                      heightBox(.02),
                      GestureDetector(
                        onTap: () {},
                        child: CustomText(
                            text: "Location",
                            textStyle: KTextStyles().normal(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                      ),
                      heightBox(.02),
                      SizedBox(
                        height: kHeight(.25),
                        width: kWidth(.9),
                        child: GoogleMap(
                          onTap: (argument) {
                            Get.dialog(Center(
                              child: Container(
                                height: kHeight(.8),
                                width: kWidth(.9),
                                decoration: BoxDecoration(
                                    color: KColors.kWhite,
                                    borderRadius:
                                        BorderRadius.circular(kWidth(.02))),
                                child: GoogleMap(
                                  initialCameraPosition: _initialPosition,
                                  zoomControlsEnabled: false,
                                  onMapCreated:
                                      (GoogleMapController controller) {},
                                ),
                              ),
                            ));
                          },
                          zoomGesturesEnabled: false,
                          initialCameraPosition: _initialPosition,
                          zoomControlsEnabled: false,
                          onMapCreated: (GoogleMapController controller) {},
                        ),
                      ),
                      heightBox(.1),
                    ],
                  ),
                );
              }),
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
    return GestureDetector(
      onTap: () {
        Get.dialog(Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kWidth(.04)),
            child: Image.network(
              images[index],
              height: kHeight(.4),
              width: kWidth(.8),
              fit: BoxFit.fill,
            ),
          ),
        ));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kWidth(.04)),
        child: Image.network(
          images[index],
          height: kHeight(.12),
          width: kWidth(.28),
          fit: BoxFit.fill,
        ),
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
                  .normal(fontSize: 12, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
