import 'package:flexify/flexify.dart';
import 'package:travel_agency/screens/car_rentals/car_box_widget.dart';
import 'package:travel_agency/utils/app_images.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class TrendingCarScreen extends StatefulWidget {
  const TrendingCarScreen({super.key});

  @override
  State<TrendingCarScreen> createState() => _TrendingCarScreenState();
}

class _TrendingCarScreenState extends State<TrendingCarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: KColors.kPrimary,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45.rh,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 37),
                  width: 204.rw,
                  child: 
                  const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: KColors.kGrey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: KColors.highgreycolor),
                        ),
                        hintStyle: TextStyle(
                          color: KColors.kGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          color: KColors.kPrimary,
                        ),
                        hintText: "Search"),
                  ),
                
                
                ),
              ],
            ),
            SizedBox(
              height: 40.rh,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 49.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'TRENDING',
                    textStyle: KTextStyles().normal(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textColor: KColors.kPrimary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11.rh,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 49.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Cars',
                    textStyle: KTextStyles().normal(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      textColor: KColors.kPrimary.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37.0, right: 21, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarBox(
                      carimage: AppImages.cartesla,
                      carname: 'TESLA',
                      carprice: '\$350'),
                  CarBox(
                      carimage: AppImages.carrangerover,
                      carname: 'TESLA',
                      carprice: '\$300'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37.0, right: 22, top: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarBox(
                      carimage: AppImages.carlamborghini,
                      carname: 'LAMBORGHINI',
                      carprice: '\$280'),
                  CarBox(
                      carimage: AppImages.carlamborghini,
                      carname: 'LAMBORGHINI',
                      carprice: '\$250'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37.0, right: 23, top: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarBox(
                      carimage: AppImages.carrangerover,
                      carname: 'RANGE ROVER',
                      carprice: '\$150'),
                  CarBox(
                      carimage: AppImages.carrangerover,
                      carname: 'RANGE ROVER',
                      carprice: '\$180'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
