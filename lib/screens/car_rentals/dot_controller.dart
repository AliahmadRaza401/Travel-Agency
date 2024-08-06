// import 'package:get/get.dart';

// class DotsController extends GetxController {
//   final totalDots = 5;
//   var currentPosition = 0.obs;

//   int validPosition(int position) {
//     if (position >= totalDots) return 0;
//     if (position < 0) return totalDots - 1;
//     return position;
//   }

//   void updatePosition(int position) {
//     currentPosition.value = validPosition(position);
//   }
// }
import 'package:get/get.dart';

class DotsController extends GetxController {
  final totalDots = 3; // Adjust the total number of dots as needed
  var currentPosition = 0.obs;

  void updatePosition(int position) {
    currentPosition.value = position;
  }
}
