import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_noticias/moddels/noticia.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_noticias/tiles/tile_noticia.dart';

import '../../components/barra_pesquisa.dart';
import '../../components/drawer/custom_drawer.dart';

class TelaNoticia extends StatefulWidget {
  const TelaNoticia({Key? key}) : super(key: key);

  @override
  State<TelaNoticia> createState() => _TelaNoticiaState();
}

class _TelaNoticiaState extends State<TelaNoticia> {
  List<Noticia> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
