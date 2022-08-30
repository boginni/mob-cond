import 'package:flutter/material.dart';

import '../../../app_foundation.dart';
import '../moddels/achados_e_perdidos.dart';
import '../tela_achado.dart';
import '../tela_perdido.dart';

class TileAchadosePerdidos extends StatelessWidget {
  const TileAchadosePerdidos({Key? key, required this.item}) : super(key: key);

  final AchadosePerdidos item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Application.navigate(context,
              item.achado ? TelaAchado(item: item) : TelaPerdido(item: item));
        },
        child: Card(
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(item.imageUrl),
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
                          "Criado por: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          item.autor,
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
                          "Situação: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          item.getSituacao(),
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
    );
  }
}
