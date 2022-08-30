import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/barra_pesquisa.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_achados_e_perdidos/tela_achados_e_perdidos.dart';

import '../../app_foundation.dart';
import '../../components/drawer/custom_drawer.dart';
import 'moddels/achados_e_perdidos.dart';
import 'tiles/tile_achados_e_perdidos.dart';

class TelaListaAchadosePerdidos extends StatefulWidget {
  const TelaListaAchadosePerdidos({Key? key}) : super(key: key);

  @override
  _TelaListaAchadosePerdidosState createState() =>
      _TelaListaAchadosePerdidosState();
}

const String aberto = "Aberto";

class _TelaListaAchadosePerdidosState extends State<TelaListaAchadosePerdidos> {
  List<AchadosePerdidos> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
      body: Column(
        children: [
          const Expanded(
            child: BarraPesquisa(),
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return TileAchadosePerdidos(item: list[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  Application.navigate(context, const TelaAchadosePerdidos());
                },
                child: const SizedBox(
                  height: kToolbarHeight,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'NOVO OBJETO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
