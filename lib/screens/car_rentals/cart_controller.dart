import 'package:get/get.dart';

class CartController extends GetxController {
  var itemCount = 1.obs;

  void increaseItemCount() {
    itemCount++;
  }

  void decreaseItemCount() {
    if (itemCount > 1) {
      itemCount--;
    }
  }

  void addItemToCart() {
    // Implement your logic to add the item to the cart
    // For example, you can use a list to store cart items
    // and update it here.
  }
}
