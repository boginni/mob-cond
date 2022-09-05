import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/barra_pesquisa.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_achados_e_perdidos/tela_novo_objeto.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_achados_e_perdidos/tiles/tile_achados_perdidos.dart';
import 'package:yukem_dashboard/yukem_cond/style/default_style.dart';

import '../../app_foundation.dart';
import '../../components/drawer/custom_drawer.dart';
import 'moddels/achados_e_perdidos.dart';

class TelaAchadosPerdidos extends StatefulWidget {
  const TelaAchadosPerdidos({Key? key}) : super(key: key);

  @override
  _TelaAchadosPerdidosState createState() => _TelaAchadosPerdidosState();
}

const String aberto = "Aberto";

class _TelaAchadosPerdidosState extends State<TelaAchadosPerdidos> {
  List<AchadosePerdidos> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      AchadosePerdidos.getList().then((value) {
        setState(() {
          list = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Achados e Perdidos"),
      ),
      drawer: CustomDrawer(changeState: setState),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BarraPesquisa(),
            DefaultStyle.smallVerticalGap(),
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return TileAchadosPerdidos(item: list[index]);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          Application.navigate(context, const TelaNovoObjeto());
        },
        child: const Text('Novo Objeto'),
      ),
    );
  }
}
