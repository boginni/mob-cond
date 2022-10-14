import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_noticias/moddels/noticia_entity.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_noticias/tela_new_noticia.dart';

import '../../../app_foundation.dart';
import '../../../components/barra_pesquisa.dart';
import '../../../components/drawer/custom_drawer.dart';
import 'tiles/tile_noticia.dart';

class TelaNoticias extends StatefulWidget {
  const TelaNoticias({Key? key}) : super(key: key);

  @override
  State<TelaNoticias> createState() => _TelaNoticiasState();
}

class _TelaNoticiasState extends State<TelaNoticias> {
  List<NoticiaEntity> list = [];

  getData() async {
    var value = await NoticiaEntity.getData(context);

    setState(() {
      list = value;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getData();
    });
  }

  final _scrollController = ScrollController();

  void atualizar() {
    setState(() {
      list = [];
      getData();
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
      // backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            child: BarraPesquisa(
              onPressed: () {
                getData();
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            flex: 8,
            child: RefreshIndicator(
              onRefresh: () async {
                atualizar();
              },
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                controller: _scrollController,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return TileNoticia(
                    item: list[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          Application.navigate(context, const TelaNewNoticia()).then((value) {
            if (value == true) {
              atualizar();
            }
          });
        },
        child: const Text('Nova'),
      ),
    );
  }
}
