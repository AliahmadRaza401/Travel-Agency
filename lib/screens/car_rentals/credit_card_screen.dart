import 'package:flexify/flexify.dart';
import 'package:travel_agency/screens/car_rentals/thankyou_screen.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.rh,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      // color: Color(oxff78D6C7),
                      color: Color(0xff78D6C7),
                    ),
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Color(0xff78D6C7),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 48.rh,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 511.rw,
                height: 332.rh,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.creditcard),
                    fit: BoxFit
                        .cover, // Ensures the image fits the smaller container
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  hintText: 'Card Number:',
                  hintStyle: TextStyle(
                      fontFamily: 'PT Sans',
                      fontSize: 14,
                      color: Color(0xff838383)),
                  suffix: Text(
                    '111 0111 202 0110 011',
                    style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 13,
                        color: Color(0xff838383)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff838383)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff838383)),
                    ),
                    hintText: 'Expiration Date:',
                    hintStyle: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 14,
                        color: Color(0xff838383)),
                    // suffixText: '+250 000 11 0011',
                    suffix: CustomText(
                      text: "02.05.2030",
                      textStyle: TextStyle(
                          fontFamily: 'PT Sans',
                          fontSize: 13,
                          color: Color(0xff838383)),
                    )),

                // suffix: Text(
                //   '+250 000 11 0011',
                //   style: TextStyle(
                //       fontFamily: 'PT Sans',
                //       fontSize: 13,
                //       color: Color(0xff838383)),
                // ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff838383)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff838383)),
                    ),
                    hintText: 'CCV:',
                    hintStyle: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 14,
                        color: Color(0xff838383)),
                    // suffixText: '+250 000 11 0011',
                    suffix: CustomText(
                      text: "142",
                      textStyle: TextStyle(
                          fontFamily: 'PT Sans',
                          fontSize: 13,
                          color: Color(0xff838383)),
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff838383)),
                  ),
                  hintText: 'Remember This Info:',
                  hintStyle: const TextStyle(
                      fontFamily: 'PT Sans',
                      fontSize: 14,
                      color: Color(0xff838383)),
                  suffixIcon: CupertinoSwitch(
                    value: _switchValue,
                    activeColor: KColors.kPrimary,
                    thumbColor: const Color(0xff95BCCC),
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 21.0, vertical: 33),
              child: PrimaryButton(
                  text: 'Pay',
                  width: double.infinity,
                  function: () {
                    Get.to(() => const ThankyouScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
