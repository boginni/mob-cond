import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/app_foundation.dart';
import 'package:yukem_dashboard/yukem_cond/common/app/app_theme.dart';
import 'package:yukem_dashboard/yukem_cond/screens/login/tiles/tile_field.dart';

import 'cadastro/tela_cadastro.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key, required this.subimit}) : super(key: key);

  final Function() subimit;

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.whatsapp,
                            size: theme.sizes.normalIcon,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Suporte',
                            style: theme.textTheme.link(),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Application.navigate(context, const TelaCadastro()),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Registre-se',
                            style: theme.textTheme.link(),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            size: theme.sizes.normalIcon,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TileField(label: 'Ambiente', icon: Icons.business),
                    TileField(label: 'Usuários', icon: Icons.person_pin),
                    TileField(label: 'Senha', icon: Icons.lock),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: TextButton(
                        child: Text(
                          "Acessar",
                          style: theme.textTheme.title1(),
                        ),
                        style: TextButton.styleFrom(backgroundColor: Colors.blue),
                        // color: Colors.blue,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(12),
                        // ),
                        onPressed: () => widget.subimit(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Esqueci minha senha"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
