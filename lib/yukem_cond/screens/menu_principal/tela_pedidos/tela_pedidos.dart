import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/barra_pesquisa.dart';

import '../../../components/drawer/custom_drawer.dart';
import 'moddels/pedidos.dart';
import 'tiles/tile_pedidos.dart';

class TelaPedidos extends StatefulWidget {
  const TelaPedidos({Key? key}) : super(key: key);

  @override
  _TelaPedidosState createState() => _TelaPedidosState();
}

const String aberto = "Aberto";

class _TelaPedidosState extends State<TelaPedidos> {
  List<Pedidos> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Pedidos.getList().then((value) {
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
        title: const Text("Lista de Pedidos"),
      ),
      drawer: CustomDrawer(changeState: setState),
      body: Column(
        children: [
          const Expanded(child: BarraPesquisa()),
          Expanded(
            flex: 8,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return TilePedidos(item: list[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
