// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/src/provider.dart';
//
// import '../../common/debugger.dart';
// import '../system_database/system_database.dart';
// import 'app_theme.dart';
//
// /// Usada para salvar configurações do sistema
// class AppSystem {
//   double getIconScale() {
//     return iconScale * 8;
//   }
//
//   double getFontScale() {
//     return fontScale * 2;
//   }
//
//   late double fontScale;
//   late double iconScale;
//
//   late bool usarPesquisaDinamica;
//   late bool salvarSenha;
//   late bool sincronizarWifi;
//
//   AppSystem();
//
//   factory AppSystem.fromMap(Map<String, dynamic> maps) {
//     final app = AppSystem();
//     app.update(maps);
//     return app;
//   }
//
//   factory AppSystem.of(BuildContext context) {
//     return context.read<AppSystem>();
//   }
//
//   update(Map<String, dynamic> maps) {
//     dynamic secureCall(dynamic value) {
//       if (value == null) {
//         printDebug('Chamada inválida');
//
//       }
//
//       return value;
//     }
//
//     bool _b(int? i) {
//       if (i == null) {
//         return false;
//       }
//
//       return i == 1;
//     }
//
//     try {
//       fontScale = secureCall(maps['ESCALA DA FONTE'].toDouble());
//       iconScale = secureCall(maps['ESCALA DOS ÍCONES'].toDouble());
//       usarPesquisaDinamica = secureCall(_b(maps['USAR PESQUISA DINÂMICA']));
//       salvarSenha = secureCall(_b(maps['SALVAR SENHA']));
//       sincronizarWifi = secureCall(_b(maps['SINCRONZIAR WIFI']));
//     } catch (e) {
//       // secureCall(_b(maps['']));
//       // secureCall(maps[''].toDouble());
//       printDebug(e.toString());
//
//     }
//   }
//
//   late AppTheme appTheme;
//
//   setTheme(AppTheme theme) {
//     appTheme = theme;
//   }
//
//   static Future<Map<String, dynamic>> getAppMaps() async {
//     final List<Map<String, dynamic>> list =
//     await DatabaseSystem.select('CONF_SYSTEM');
//     Map<String, dynamic> maps = {};
//
//     for (var row in list) {
//       maps[row['NOME']] = int.parse(row['VALOR']);
//     }
//
//     // final config = AppConfig(maps);
//     return maps;
//   }
//
// }
//
//
