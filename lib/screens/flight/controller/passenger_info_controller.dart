import 'package:travel_agency/widgets/widgets_imports.dart';

class PassengerInfoController extends GetxController {
  var selectedOption = 0.obs;

  void setSelectedOption(int value) {
    selectedOption.value = value;
  }
}
