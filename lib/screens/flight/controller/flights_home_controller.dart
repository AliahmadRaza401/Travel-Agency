import 'package:travel_agency/widgets/widgets_imports.dart';

class FlightsHomeController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;

  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
  }

  var selectedOption = 0.obs;

  void setSelectedOption(int value) {
    selectedOption.value = value;
  }
}
