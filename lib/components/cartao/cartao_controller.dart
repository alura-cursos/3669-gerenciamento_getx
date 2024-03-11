import 'package:get/get.dart';

class CartaoController extends GetxController {
  var counter = 0.obs;

  void decrement() {
    counter--;
  }

  void increment() {
    counter++;
  }
}
