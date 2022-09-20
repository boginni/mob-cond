import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_manutencao/moddels/manutencao.dart';
import '../container_manutencao_atrasada.dart';

class TileManutencao extends StatelessWidget {
  const TileManutencao({Key? key, required this.item}) : super(key: key);
  final Manutencao item;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        children: [
         const Text(
            "MANUTENÇÕES EM ATRASO",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        const  Divider(
            height: 1,
            thickness: 0.2,
            color: Colors.black,
          ),
            ContainerManutencaoAtrasada(item: item),

         const Text(
            "MANUTENÇÕES DESTE MÊS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
       const   Divider(
            height: 1,
            thickness: 0.2,
            color: Colors.black,
          ),
         
        const  Text(
            "MANUTENÇÕES FUTURAS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        const  Divider(
            height: 1,
            thickness: 0.2,
            color: Colors.black,
          ),
        
        ],
      ),
    );
  }
}
