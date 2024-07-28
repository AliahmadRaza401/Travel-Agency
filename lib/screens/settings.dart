import 'package:travel_agency/widgets/customText.dart';

import '../widgets/widgets_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
              decoration: BoxDecoration(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: KColors.kPrimary,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Account settings',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kPrimary,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.w,
                        color: KColors.kPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: KColors.kPrimary,
              thickness: 1,
              indent: 30.w,
              endIndent: 30.w,
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.lock,
                          color: KColors.kPrimary,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Password',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kPrimary,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.w,
                        color: KColors.kPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: KColors.kPrimary,
              thickness: 1,
              indent: 30.w,
              endIndent: 30.w,
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.move_up,
                        color: KColors.kPrimary,
                      ),
                      SizedBox(
                          width: 8
                              .w), // Adjust the space between the icon and the text
                      CText(
                        text: 'Theme Mode Dark/Light',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: KColors.kPrimary,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.w,
                        color: KColors.kPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: KColors.kPrimary,
              thickness: 1,
              indent: 30.w,
              endIndent: 30.w,
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.support,
                          color: KColors.kPrimary,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Customer support',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kPrimary,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.w,
                        color: KColors.kPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: KColors.kPrimary,
              thickness: 1,
              indent: 30.w,
              endIndent: 30.w,
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.privacy_tip,
                          color: KColors.kPrimary,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Privacy policy',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kPrimary,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.w,
                        color: KColors.kPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: KColors.kPrimary,
              thickness: 1,
              indent: 30.w,
              endIndent: 30.w,
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.local_police,
                          color: KColors.kPrimary,
                        ),
                        SizedBox(
                            width: 8
                                .w), // Adjust the space between the icon and the text
                        CText(
                          text: 'Terms and conditions',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: KColors.kPrimary,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.w,
                        color: KColors.kPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: KColors.kPrimary,
              thickness: 1,
              indent: 30.w,
              endIndent: 30.w,
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
