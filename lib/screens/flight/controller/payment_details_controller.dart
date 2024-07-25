import 'package:travel_agency/widgets/widgets_imports.dart';

class PaymentDetailsController extends GetxController {
  var selectedOption = 0.obs;

  void setSelectedOption(int value) {
    selectedOption.value = value;
  }
}
