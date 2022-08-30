import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/barra_pesquisa.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_votacao_online/moddels/votacao.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_votacao_online/tiles/tile_votacao.dart';

import '../../components/drawer/custom_drawer.dart';

class TelaListaVotacaoOnline extends StatefulWidget {
  const TelaListaVotacaoOnline({Key? key}) : super(key: key);

  @override
  _TelaListaVotacaoOnlineState createState() => _TelaListaVotacaoOnlineState();
}

const String aberto = "Aberto";

class _TelaListaVotacaoOnlineState extends State<TelaListaVotacaoOnline> {
  List<Votacao> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Votacao.getList().then((value) {
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
          title: const Text("Votação Online"),
        ),
        drawer: CustomDrawer(changeState: (cb) {}),
        body: Column(
          children: [
            const BarraPesquisa(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return TileVotacao(item: list[index]);
                },
              ),
            ),
          ],
        ));
  }
}
