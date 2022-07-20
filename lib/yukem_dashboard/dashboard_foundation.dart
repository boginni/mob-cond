import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukem_dashboard/sdk/utility/page_manager.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/dashboard/tela_vendas.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/tela_noticias.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/utilidades/tela_configuracoes.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/vendedor/tela_comissao.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/vendedor/tela_critica.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/vendedor/tela_faturamento.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/vendedor/tela_metas_vendedor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late final PageManager pageManager;

  @override
  void initState() {
    // TODO: implement initState
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
      TelaVendas(),
      TelaComissao(),
      TelaCritica(),
      TelaMetasVendedor(),
      TelaFaturamento(),
      TelaConfiguracoes(),
      TelaNoticias()
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
