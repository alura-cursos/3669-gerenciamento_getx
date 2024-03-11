import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class CarrinhoController extends GetxController {
  var carrinho = <Item>[].obs;
  var total = 0.0.obs;

  void addToCart(Item item) {
    carrinho.add(item);
    updateTotal();
  }

  void removeFromCart(Item item) {
    carrinho.remove(item);
    updateTotal();
  }

  void updateTotal() {
    total.value = 0.0;
    carrinho.forEach((element) {
      total.value += element.preco;
    });
  }
}
