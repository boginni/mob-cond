import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/style/default_style.dart';

import '../../../../app_foundation.dart';
import '../moddels/pedidos.dart';
import '../tela_pedido.dart';

class TilePedidos extends StatelessWidget {
  const TilePedidos({Key? key, required this.item}) : super(key: key);

  final Pedidos item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: DefaultStyle.tilePadding(),
      child: InkWell(
        onTap: () {
          Application.navigate(context, TelaPedido(item: item));
        },
        child: Container(
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: DefaultStyle.tilePadding(),
              child: Column(
                children: [
                  Text(
                    item.titulo,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "PARA: ",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            item.nomecondomino,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "DATA DA ENTREGA: ",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            item.data,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
