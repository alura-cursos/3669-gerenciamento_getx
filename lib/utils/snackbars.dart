import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class AppSnackbars {
  static getAddItem(Item item) {
    return Get.showSnackbar(GetSnackBar(
      title: "Item adicionado!",
      message: "${item.nome} foi adicionado à sacola de compras",
      duration: Duration(seconds: 2),
    ));
  }

  static getRemoveItem(Item item) {
    return Get.showSnackbar(GetSnackBar(
      title: "Item removido!",
      message: "${item.nome} foi removido da sacola de compras",
      duration: Duration(seconds: 2),
    ));
  }

  static getPayment() {
    return Get.showSnackbar(GetSnackBar(
      title: "Compra finalizada!",
      message: "Seu pedido chegará em breve.",
      duration: Duration(seconds: 2),
    ));
  }
}
