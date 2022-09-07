import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukem_dashboard/sdk/utility/page_manager.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/placeholder.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_atividades/tela_atividades.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_confidencial/tela_confidencial.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_documentos/tela_documentos.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_manutencao/tela_manutencao.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_ocorrencia/tela_ocorrencia.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_pedidos/tela_pedidos.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_principal/tela_principal.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_reservas/tela_reservas.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_visitantes/tela_visitantes.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_votacao_online/tela_votacao_online.dart';

import 'tela_achados_perdidos/tela_achados_perdidos.dart';
import 'tela_noticias/tela_noticia.dart';

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
      TelaPrincipal(),
      TelaPlaceholder(),
      TelaOcorrencias(),
      TelaVisitantes(),
      TelaReservas(),
      TelaNoticias(),
      TelaPedidos(),
      TelaVotacaoOnline(),
      TelaAchadosPerdidos(),
      TelaDocumentos(),
      TelaAtividades(),
      TelaConfidencial(),
      TelaManutencao()
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
