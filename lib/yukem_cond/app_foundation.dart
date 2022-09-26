import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukem_dashboard/yukem_cond/common/app/app_connection.dart';
import 'package:yukem_dashboard/yukem_cond/common/app/app_user.dart';
import 'package:yukem_dashboard/yukem_cond/screens/yukem_cond_foundation.dart';

import 'common/app/app_theme.dart';
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

  static Future navigate(context, Widget tela) async {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => tela,
      ),
    );
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
      child: MultiProvider(
        providers: [
          Provider<AppUser>(create: (context) {
            return AppUser();
          }),
          Provider<AppConnection>(create: (context) {
            return AppConnection();
          }),
          Provider<AppTheme>(create: (context) {
            return AppTheme();
          }),
        ],
        child: MaterialApp(
          theme: ThemeData(),
          darkTheme: ThemeData(),
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
      ),
    );
  }
}
