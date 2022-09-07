import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/tela_configuracao/tela_configuracao.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/tela_suporte/tela_suporte.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/tela_trocar_cond/tela_trocar_cond.dart';

import '../../../../app_foundation.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CupertinoTabBar(
        height: 70,
        items: [
          _barItem(
            context,
            icon: Icons.business,
            nome: 'Trocar',
            onPressed: () {
              Application.navigate(context, const TelaTrocarCond());
            },
          ),
          _barItem(
            context,
            icon: Icons.help_outline,
            nome: "Ajuda",
            onPressed: () {
              Application.navigate(context, const TelaSuporte());
            },
          ),
          _barItem(
            context,
            icon: Icons.settings,
            nome: "Config",
            onPressed: () {
              Application.navigate(context, const TelaConfiguracao());
            },
          ),
          _barItem(
            context,
            icon: Icons.exit_to_app,
            nome: "Sair",
            onPressed: () {
              Application.logout(context);
            },
          )
        ],
      ),
    );
  }
}

BottomNavigationBarItem _barItem(BuildContext context,
    {required IconData icon,
    required String nome,
    required void Function() onPressed}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.all(10),
      child: FlatButton(
        shape: const CircleBorder(
          side: BorderSide.none,
        ),
        onPressed: onPressed,
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 30,
              color: Colors.grey,
            ),
            Text(
              nome,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    ),
  );
}
