import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class CarrinhoController extends GetxController {
  var carrinho = [].obs;

  void addToCart(Item item) {
    carrinho.add(item);
  }

  void removeFromCart(Item item) {
    carrinho.remove(item);
  }
}
