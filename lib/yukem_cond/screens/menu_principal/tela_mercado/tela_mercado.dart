import 'package:flutter/material.dart';

import '../../../app_foundation.dart';
import '../../../components/barra_pesquisa.dart';
import '../../../components/drawer/custom_drawer.dart';
import 'moddels/mercado.dart';
import 'tela_nova_venda.dart';
import 'tiles/tile_mercado.dart';

class TelaMercado extends StatefulWidget {
  const TelaMercado({Key? key}) : super(key: key);

  @override
  _TelaMercadoState createState() => _TelaMercadoState();
}

class _TelaMercadoState extends State<TelaMercado> {
  List<Mercado> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Mercado.getList().then((value) {
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
        title: const Text("Mercado"),
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
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return TileMercado( item: list[index]);
              },
            ),
          ),
          
        ],
      ),
        bottomNavigationBar: TextButton(
        onPressed: () {
          Application.navigate(context, const TelaNovaVenda());
        },
        child: const Text('Nova Venda'),
      ),
    );
  }
}
