import 'package:flutter/material.dart';

import '../../../components/barra_pesquisa.dart';
import '../../../components/drawer/custom_drawer.dart';
import 'moddels/noticia.dart';
import 'tiles/tile_noticia.dart';


class TelaNoticias extends StatefulWidget {
  const TelaNoticias({Key? key}) : super(key: key);

  @override
  State<TelaNoticias> createState() => _TelaNoticiasState();
}

class _TelaNoticiasState extends State<TelaNoticias> {
  List<Noticia> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Noticia.getList().then((value) {
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
        title: const Text("Notícias"),
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
                return TileNoticia(item: list[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
