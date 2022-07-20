// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// import '../../models/configuracao/app_system.dart';
//
// class TextSpamable extends StatelessWidget {
//   final List<Widget> textList;
//
//   const TextSpamable({Key? key, required this.textList}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // AppConfig appConfig = context.read<AppConfig>();
//
//     return Row(
//       children: textList,
//     );
//   }
// }
//
// class TextDinheiroReal extends StatelessWidget {
//   static String format(double valor, {moeda = "R\$"}) {
//     final formatter = NumberFormat.simpleCurrency(locale: "pt_Br");
//     String newText = formatter.format(valor);
//
//     return newText;
//   }
//
//   final double valor;
//
//   const TextDinheiroReal({Key? key, required this.valor}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return Text(format(valor),
//         style: TextStyle(
//             fontSize: 12 + appSystem.getFontScale(),
//             fontWeight: FontWeight.bold,
//             color: Colors.grey[900]));
//   }
// }
//
// class TextTitle extends StatelessWidget {
//   final String title;
//
//   final Color? color;
//
//   const TextTitle(this.title, {Key? key, this.color}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return Text(title, style: textTitlelStyle(appSystem, color: color));
//   }
// }
//
// InputDecoration defaultInputDecoration() {
//   return const InputDecoration(
//       isDense: true, contentPadding: EdgeInsets.all(8));
// }
//
// /// Style Utilizado em [TextTitle]
// TextStyle textTitlelStyle(AppSystem appSystem, {Color? color}) {
//   return TextStyle(
//       fontSize: 8 + appSystem.getFontScale(),
//       fontWeight: FontWeight.bold,
//       color: color ?? Colors.grey[900]);
// }
//
// /// Style Utilizado em [TextNormal]
// TextStyle textNormalStyle(AppSystem appSystem, {Color? color}) {
//   return TextStyle(
//       fontSize: 6 + appSystem.getFontScale(), color: color ?? Colors.grey[800]);
// }
//
// TextStyle textBigTitle(AppSystem appSystem) {
//   return TextStyle(
//     fontSize: 12 + appSystem.getFontScale(),
//     color: Colors.grey[900],
//     fontWeight: FontWeight.bold,
//   );
// }
//
// /// Texto que já utiliza configuração de fonte e cor
// /// deve ser Utilizado em toda aplicação
// /// para pegar o style, utilize [textNormalStyle]
// class TextNormal extends StatelessWidget {
//   final String title;
//
//   const TextNormal(this.title, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//     return Text(title, style: textNormalStyle(appSystem));
//   }
// }
//
// class TextBigTitle extends StatelessWidget {
//   final String title;
//
//   const TextBigTitle(this.title, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//     return Text(title, style: textBigTitle(appSystem));
//   }
// }
