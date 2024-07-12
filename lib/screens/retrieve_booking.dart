import 'package:travel_agency/widgets/widgets_imports.dart';

class RetrieveBooking extends StatelessWidget {
  const RetrieveBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: const CustomAppBar(title: "Retrieve Booking", actions: []),
        body: Center(
          child: SizedBox(
            height: context.height,
            width: kWidth(.9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(0.04),
                CustomText(
                    text: "Reference Number",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, fontWeight: FontWeight.w600)),
                heightBox(.02),
                Container(
                  width: kWidth(.9),
                  padding: EdgeInsets.only(left: kWidth(.04)),
                  decoration: BoxDecoration(
                      color: KColors.kGrey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(kWidth(.04))),
                  child: TextField(
                    controller: TextEditingController(),
                    style: const TextStyle(color: KColors.kGrey),
                    cursorColor: KColors.kGrey,
                    decoration: const InputDecoration(
                        hintText: "Retrieve Number", border: InputBorder.none),
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "Sur Name",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, fontWeight: FontWeight.w600)),
                heightBox(.02),
                Container(
                  width: kWidth(.9),
                  padding: EdgeInsets.only(left: kWidth(.04)),
                  decoration: BoxDecoration(
                      color: KColors.kGrey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(kWidth(.04))),
                  child: TextField(
                    controller: TextEditingController(),
                    style: const TextStyle(color: KColors.kGrey),
                    cursorColor: KColors.kGrey,
                    decoration: const InputDecoration(
                        hintText: "Name", border: InputBorder.none),
                  ),
                ),
                Spacer(),
                PrimaryButton(
                  width: .9,
                  text: "Submit",
                  function: () {},
                ),
                heightBox(.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
