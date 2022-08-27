import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukem_dashboard/sdk/utility/page_manager.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/placeholder.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_principal/tela_principal.dart';

import 'tela_noticias/tela_lista_noticias.dart';
import 'tela_noticias/tela_noticia.dart';
import 'tela_votacao_online/tela_votacao_aberta.dart';
import 'tela_votacao_online/tela_votacao_fechada.dart';
import 'tela_votacao_online/tela_votacao_online.dart';

class YukemCondFoundation extends StatefulWidget {
  const YukemCondFoundation({Key? key}) : super(key: key);

  @override
  State<YukemCondFoundation> createState() => _YukemCondFoundationState();
}

class _YukemCondFoundationState extends State<YukemCondFoundation> {
  late final PageManager pageManager;

  @override
  void initState() {
    super.initState();
    pageManager = PageManager();
  }

  @override
  Widget build(BuildContext context) {
    Widget p(Widget child) {
      return WillPopScope(
        onWillPop: () => pageManager.onWillPop(),
        child: child,
      );
    }

    const pages = <Widget>[
      TelaPrincipal(), //0
      TelaPlaceholder(), //1
      TelaVotacaoOnline(), //2
      TelaNoticia(), //3
    ];

    return Provider(
      create: (BuildContext context) {
        return pageManager;
      },
      child: MaterialApp(
        home: WillPopScope(
          onWillPop: () => pageManager.onWillPop(),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageManager.pageController,
            // children: [for (var page in pages) p(page)],
            children: pages,
          ),
        ),
      ),
    );
  }
}
