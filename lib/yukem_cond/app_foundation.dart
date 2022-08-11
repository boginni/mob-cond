import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/yukem_cond_foundation.dart';

import 'screens/login/tela_login.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  static const String versao = '0.0.1';

  @override
  State<StatefulWidget> createState() => _ApplicationState();

  static logout(BuildContext context) {
    final _ApplicationState? state =
        context.findAncestorStateOfType<_ApplicationState>();

    if (state != null) {
      state.logout();
    }
  }
}

class _ApplicationState extends State<Application> {
  Key mainApplicationKey = UniqueKey();

  void performHotRestart() {
    setState(() {
      mainApplicationKey = UniqueKey();
    });
  }

  late bool onLogin;
  dynamic appUser;

  void logout() {
    onLogin = true;
    performHotRestart();
  }

  @override
  void initState() {
    super.initState();
    onLogin = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: mainApplicationKey,
      child: MaterialApp(
        home: onLogin
            ? TelaLogin(
                subimit: () {
                  setState(
                    () {
                      onLogin = false;
                    },
                  );
                },
              )
            : const YukemCondFoundation(),
      ),
    );
  }
}
