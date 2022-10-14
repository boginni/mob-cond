import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_manutencao/moddels/manutencao.dart';

class TileManutencaoAtrasada extends StatefulWidget {
  const TileManutencaoAtrasada({Key? key, required this.item})
      : super(key: key);
  final Manutencao item;
  @override
  State<TileManutencaoAtrasada> createState() =>
      _TileManutencaoAtrasadaState();
}

class _TileManutencaoAtrasadaState
    extends State<TileManutencaoAtrasada> {
  @override
  Widget build(BuildContext context) {
    const SizedBox(
      height: 20,
    );
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.titulo,
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
                          "ULTIMA: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          widget.item.dataultimamanutencao,
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
                          "PRÓXIMA: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          widget.item.dataproximamanutencao,
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
        ],
      ),
    );
  }
}
