import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_ocorrencia/moddels/ocorrencia.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_ocorrencia/tile/tile_ocorrencia.dart';

import '../../../app_foundation.dart';
import '../../../components/drawer/custom_drawer.dart';
import 'tela_nova_ocorrencia.dart';

class TelaOcorrencias extends StatefulWidget {
  const TelaOcorrencias({Key? key}) : super(key: key);

  @override
  _TelaOcorrenciasState createState() => _TelaOcorrenciasState();
}

const String aberto = "Aberto";

class _TelaOcorrenciasState extends State<TelaOcorrencias> {
  List<Ocorrencia> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Ocorrencia.getList().then((value) {
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
        title: const Text("Ocorrências"),
      ),
      drawer: CustomDrawer(changeState: setState),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return TileOcorrencia(item: list[index]);
              },
            ),
          ],
        ),
      ),
       bottomNavigationBar: TextButton(
        onPressed: () {
          Application.navigate(context, const TelaNovaOcorrencia());
        },
        child: const Text('Nova Ocorrência'),
      ),
    );
  }
}
