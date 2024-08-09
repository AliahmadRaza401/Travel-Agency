import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:travel_agency/widgets/customText.dart';

import '../widgets/widgets_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: Get.height * 0.25,
              width: Get.width,
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: const BoxDecoration(
                color: KColors.kPrimary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: CText(
                text: 'Settings',
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                color: KColors.kWhite,
              ),
            ),
            SizedBox(height: 47.h),

            SizedBox(
              height: 17.h,
            ),

            Container(
              width: kWidth(.9),
              decoration: BoxDecoration(
                  color: KColors.kPrimary,
                  boxShadow: [
                    BoxShadow(
                        color: KColors.kGrey.withOpacity(.2), blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(kWidth(.02))),
              padding: EdgeInsets.all(kWidth(.04)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.move_up,
                        color: KColors.kWhite,
                      ),
                      SizedBox(width: 8.w),
                      CText(
                        text: 'App Theme',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: KColors.kWhite,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 24.w,
                    color: KColors.kWhite,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 17.h,
            ),
            Container(
              width: kWidth(.9),
              decoration: BoxDecoration(
                  color: KColors.kPrimary,
                  boxShadow: [
                    BoxShadow(
                        color: KColors.kGrey.withOpacity(.2), blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(kWidth(.02))),
              padding: EdgeInsets.all(kWidth(.04)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.support,
                          color: KColors.kWhite,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Customer support',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kWhite,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 24.w,
                    color: KColors.kWhite,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 17.h,
            ),
            Container(
              width: kWidth(.9),
              decoration: BoxDecoration(
                  color: KColors.kPrimary,
                  boxShadow: [
                    BoxShadow(
                        color: KColors.kGrey.withOpacity(.2), blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(kWidth(.02))),
              padding: EdgeInsets.all(kWidth(.04)),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  await EasyLauncher.url(
                      url: "https://www.sourcetravel.com/privacy-policy");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.privacy_tip,
                          color: KColors.kWhite,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Privacy policy',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kWhite,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 24.w,
                      color: KColors.kWhite,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 17.h,
            ),
            Container(
              width: kWidth(.9),
              decoration: BoxDecoration(
                  color: KColors.kPrimary,
                  boxShadow: [
                    BoxShadow(
                        color: KColors.kGrey.withOpacity(.2), blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(kWidth(.02))),
              padding: EdgeInsets.all(kWidth(.04)),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  await EasyLauncher.url(
                      url: "https://www.sourcetravel.com/terms-and-conditions");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.local_police,
                          color: KColors.kWhite,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Terms and conditions',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kWhite,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 24.w,
                      color: KColors.kWhite,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 17.h,
            ),
            // GestureDetector(
            //   onTap: () {
            //     // Get.to(SignupScreen());
            //   },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       const Icon(
            //         Icons.logout_rounded,
            //         color: KColors.kPrimary,
            //       ),
            //       CText(
            //         text: 'Sign out',
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500,
            //         color: KColors.kPrimary,
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
