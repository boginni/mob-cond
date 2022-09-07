import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukem_dashboard/sdk/utility/page_manager.dart';

import 'menu_principal/tela_acesso/tela_acesso.dart';
import 'menu_principal/tela_achados_perdidos/tela_achados_perdidos.dart';
import 'menu_principal/tela_atividades/tela_atividades.dart';
import 'menu_principal/tela_documentos/tela_documentos.dart';
import 'menu_principal/tela_manutencao/tela_manutencao.dart';
import 'menu_principal/tela_mercado/tela_mercado.dart';
import 'menu_principal/tela_noticias/tela_noticia.dart';
import 'menu_principal/tela_ocorrencia/tela_ocorrencia.dart';
import 'menu_principal/tela_pedidos/tela_pedidos.dart';
import 'menu_principal/tela_principal/tela_principal.dart';
import 'menu_principal/tela_reservas/tela_reservas.dart';
import 'menu_principal/tela_visitantes/tela_visitantes.dart';
import 'menu_principal/tela_votacao_online/tela_votacao_online.dart';
import 'sistema/placeholder.dart';

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
      TelaAcesso(),
      TelaOcorrencias(),
      TelaVisitantes(),
      TelaReservas(),
      TelaNoticias(),
      TelaPedidos(),
      TelaVotacaoOnline(),
      TelaAchadosPerdidos(),
      TelaDocumentos(),
      TelaAtividades(),
      TelaMercado(),
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
