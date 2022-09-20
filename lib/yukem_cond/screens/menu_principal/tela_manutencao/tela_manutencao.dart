import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_manutencao/moddels/manutencao.dart';
import '../../../components/drawer/custom_drawer.dart';
import 'tile/tile_manutencao.dart';

class TelaManutencao extends StatefulWidget {
  const TelaManutencao({Key? key}) : super(key: key);

  @override
  _TelaManutencaoState createState() => _TelaManutencaoState();
}

class _TelaManutencaoState extends State<TelaManutencao> {
  List<Manutencao> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Manutencao.getList().then((value) {
        setState(() {
          list = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manutencão"),
      ),
      drawer: CustomDrawer(changeState: setState),
      body: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return TileManutencao( item: list[index]);
        },
      ),
    );
  }
}
