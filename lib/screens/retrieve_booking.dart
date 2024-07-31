import 'package:table_calendar/table_calendar.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class RetrieveBooking extends StatelessWidget {
  RetrieveBooking({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final DateController dateController = Get.put(DateController());

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
                    controller: numberController,
                    style: const TextStyle(color: KColors.kGrey),
                    cursorColor: KColors.kGrey,
                    decoration: const InputDecoration(
                        hintText: "Retrieve Number", border: InputBorder.none),
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "Email Address",
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
                    controller: emailController,
                    style: const TextStyle(color: KColors.kGrey),
                    cursorColor: KColors.kGrey,
                    decoration: const InputDecoration(
                        hintText: "Email Address", border: InputBorder.none),
                  ),
                ),
                heightBox(.02),
                CustomText(
                    text: "Departure Date",
                    textStyle: KTextStyles()
                        .normal(fontSize: 16, fontWeight: FontWeight.w600)),
                heightBox(.02),
                GestureDetector(
                  onTap: () {
                    Get.dialog(
                      Center(
                        child: Container(
                          height: kHeight(.45),
                          width: context.width,
                          decoration: BoxDecoration(
                              color: KColors.kWhite,
                              borderRadius: BorderRadius.circular(kWidth(.04))),
                          padding: EdgeInsets.all(kWidth(.04)),
                          child: Material(
                            color: KColors.noColor,
                            child: Column(
                              children: [
                                CustomCalendarWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: AbsorbPointer(
                    absorbing: true,
                    child: Container(
                      width: kWidth(.9),
                      padding: EdgeInsets.only(left: kWidth(.04)),
                      decoration: BoxDecoration(
                          color: KColors.kGrey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(kWidth(.04))),
                      child: Obx(() {
                        return TextField(
                          controller: TextEditingController(),
                          style: const TextStyle(color: KColors.kGrey),
                          cursorColor: KColors.kGrey,
                          decoration: InputDecoration(
                              hintText: dateController.selectedDate.value
                                  .toString()
                                  .substring(0, 10),
                              border: InputBorder.none),
                        );
                      }),
                    ),
                  ),
                ),
                const Spacer(),
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

class DateController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;

  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
  }
}

class CustomCalendarWidget extends StatelessWidget {
  final DateController dateController = Get.put(DateController());

  CustomCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DateController>(
      builder: (controller) => TableCalendar(
        firstDay: DateTime.utc(2021, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: controller.selectedDate.value,
        calendarFormat: CalendarFormat.month,
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          headerPadding: EdgeInsets.zero,
          titleTextStyle: TextStyle(color: KColors.kBlack, fontSize: 20),
        ),
        calendarStyle: CalendarStyle(
          todayDecoration: const BoxDecoration(color: KColors.kPrimary),
          selectedDecoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          defaultTextStyle: const TextStyle(color: Colors.black),
          weekendTextStyle: const TextStyle(color: Colors.black),
          outsideTextStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(color: Colors.black),
          weekendStyle: TextStyle(color: Colors.black),
        ),
        availableGestures: AvailableGestures.horizontalSwipe,
        onPageChanged: (focusedDay) {},
        onFormatChanged: (format) {},
        onDaySelected: (selectedDay, focusedDay) {
          dateController.updateSelectedDate(selectedDay);
          Get.back();
        },
      ),
    );
  }
}
