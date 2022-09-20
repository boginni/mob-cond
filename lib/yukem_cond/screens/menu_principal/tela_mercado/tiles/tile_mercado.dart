import 'package:flutter/material.dart';

import '../../../../app_foundation.dart';
import '../moddels/mercado.dart';
import '../tela_anuncio.dart';

class TileMercado extends StatelessWidget {
  const TileMercado({Key? key, required this.item}) : super(key: key);

  final Mercado item;

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
        onTap: () => Application.navigate(
            context,
            TelaAnuncio(
              item: item,
            )),
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      item.imageUrl,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.titulo),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("RS ${item.valor}"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
