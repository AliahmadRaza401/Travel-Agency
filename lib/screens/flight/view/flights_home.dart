import 'package:table_calendar/table_calendar.dart';
import 'package:travel_agency/screens/flight/controller/flights_home_controller.dart';
import 'package:travel_agency/widgets/widgets_imports.dart';

class FlightsHome extends StatelessWidget {
  FlightsHome({super.key});
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController personController = TextEditingController();
  final DateController dateController = Get.put(DateController());
  final FlightsHomeController controller = Get.put(FlightsHomeController());

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
        backgroundColor: KColors.kPrimary,
        body: SizedBox(
          height: context.height,
          width: context.width,
          child: Column(
            children: [
              SizedBox(
                width: kWidth(.9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heightBox(.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: KColors.kWhite,
                          ),
                        ),
                        CustomText(
                            text: "Search Flights",
                            textStyle: KTextStyles().normal(
                                fontSize: 20, textColor: KColors.kWhite)),
                        const Icon(null),
                      ],
                    ),
                    heightBox(.04),
                    CustomText(
                        text: "Discover",
                        textStyle: KTextStyles().normal(
                            fontSize: 34,
                            textColor: KColors.kWhite,
                            fontWeight: FontWeight.bold)),
                    CustomText(
                        text: "a new world",
                        textStyle: KTextStyles().normal(
                            fontSize: 34,
                            textColor: KColors.kWhite,
                            fontWeight: FontWeight.bold)),
                    heightBox(.02),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: context.height,
                  width: context.width,
                  decoration: BoxDecoration(
                    color: KColors.kWhite,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(kWidth(.08)),
                    ),
                  ),
                  padding: EdgeInsets.all(kWidth(.04)),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Obx(() {
                              return Radio(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                activeColor: KColors.kPrimary,
                                fillColor: const WidgetStatePropertyAll(
                                    KColors.kPrimary),
                                value: 1,
                                groupValue: controller.selectedOption.value,
                                onChanged: (value) {
                                  controller.setSelectedOption(value!);
                                  return;
                                },
                              );
                            }),
                            CustomText(
                                text: "One-way",
                                textStyle: KTextStyles().normal(
                                    fontSize: 14, textColor: KColors.kBlue)),
                            widthBox(.04),
                            Obx(() {
                              return Radio(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                activeColor: KColors.kPrimary,
                                fillColor: const WidgetStatePropertyAll(
                                    KColors.kPrimary),
                                value: 2,
                                groupValue: controller.selectedOption.value,
                                onChanged: (value) {
                                  controller.setSelectedOption(value!);
                                  return;
                                },
                              );
                            }),
                            CustomText(
                                text: "Round-trip",
                                textStyle: KTextStyles().normal(
                                    fontSize: 14, textColor: KColors.kBlue))
                          ],
                        ),
                        heightBox(.02),
                        CustomText(
                            text: "From", textStyle: KTextStyles().normal()),
                        heightBox(.01),
                        Ktextfield(
                          img: 'assets/images/flight.png',
                          controller: fromController,
                          title: "New York, USA",
                        ),
                        heightBox(.02),
                        CustomText(
                            text: "To", textStyle: KTextStyles().normal()),
                        heightBox(.01),
                        Ktextfield(
                          img: 'assets/images/flight_landing.png',
                          controller: toController,
                          title: "Da Nang, Vietnam",
                        ),
                        heightBox(.02),
                        CustomText(
                            text: "Departure Date",
                            textStyle: KTextStyles().normal()),
                        heightBox(.01),
                        GestureDetector(
                          onTap: () {
                            Get.bottomSheet(Container(
                              height: kHeight(.6),
                              width: context.width,
                              decoration: BoxDecoration(
                                  color: KColors.kWhite,
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(kWidth(.08)))),
                              padding: EdgeInsets.all(kWidth(.04)),
                              child: Column(
                                children: [
                                  CustomCalendarWidget(),
                                  const Spacer(),
                                  PrimaryButton(
                                    text: "Search Date",
                                    function: () {},
                                  ),
                                  heightBox(.02),
                                ],
                              ),
                            ));
                          },
                          child: AbsorbPointer(
                            absorbing: true,
                            child: Obx(() {
                              return Ktextfield(
                                img: 'assets/images/calendar.png',
                                controller: TextEditingController(),
                                title: controller.selectedDate.value
                                    .toString()
                                    .substring(0, 10),
                              );
                            }),
                          ),
                        ),
                        heightBox(.02),
                        CustomText(
                            text: "Travellers",
                            textStyle: KTextStyles().normal()),
                        heightBox(.01),
                        Ktextfield(
                          img: 'assets/images/person.png',
                          controller: personController,
                          title: "1 Adult, 1 child, 0 Infant",
                        ),
                        heightBox(.04),
                        PrimaryButton(
                          width: .9,
                          text: "Search Flights",
                          function: () {
                            Get.toNamed("/searchflights");
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Ktextfield extends StatelessWidget {
  final String img, title;
  final TextEditingController controller;
  const Ktextfield({
    super.key,
    required this.img,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.9),
      padding: EdgeInsets.only(left: kWidth(.02)),
      decoration: BoxDecoration(
          color: KColors.kGrey.withOpacity(.1),
          borderRadius: BorderRadius.circular(kWidth(.02))),
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        style: const TextStyle(color: KColors.kGrey),
        cursorColor: KColors.kGrey,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: kHeight(.012)),
            prefixIcon: Image.asset(
              img,
              color: KColors.kPrimary,
            ),
            hintText: title,
            border: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}

class CustomCalendarWidget extends StatelessWidget {
  final FlightsHomeController controller = Get.find();

  CustomCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlightsHomeController>(
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
          controller.updateSelectedDate(selectedDay);
          Get.back();
        },
      ),
    );
  }
}
