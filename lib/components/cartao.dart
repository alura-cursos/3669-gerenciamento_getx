import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/item.dart';

class Cartao extends StatelessWidget {
  Cartao({Key? key, required this.item}) : super(key: key);
  final Item item;

  var counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF6F6F6),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 134),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage(item.uri),
              width: double.infinity,
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      item.nome,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text("R\$ ${item.preco.toStringAsFixed(2)}"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          if (counter > 0) {
                            counter--;
                          }
                        },
                        child: const Icon(
                          Icons.remove_circle_outline,
                          size: 20,
                        ),
                      ),
                      Obx(() => Text(counter.toString())),
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          counter++;
                        },
                        child: const Icon(
                          Icons.add_circle_outline,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
