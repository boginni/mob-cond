// import 'package:flutter/material.dart';
//
// import '../custom_widgets/custom_icons.dart';
// import '../custom_widgets/custom_text.dart';
//
// GlobalKey<BarraProgressoLinearState> mostrarBarraProgresso(
//     int endValue, BuildContext context) {
//   final alertKey = GlobalKey<BarraProgressoLinearState>();
//
//   AlertDialog alert = AlertDialog(
//     content: BarraProgressoLinear(
//       endValue: endValue,
//       key: alertKey,
//     ),
//   );
//
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
//
//   return alertKey;
// }
//
// GlobalKey<BarraProgressoCircularState> mostrarBarraProgressoCircular(
//     BuildContext context) {
//   final alertKey = GlobalKey<BarraProgressoCircularState>();
//
//   AlertDialog alert = AlertDialog(
//     content: BarraProgressoCircular(
//       endValue: 1,
//       key: alertKey,
//     ),
//   );
//
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
//
//   return alertKey;
// }
//
// class BarraProgressoLinear extends StatefulWidget {
//   const BarraProgressoLinear({Key? key, required this.endValue})
//       : super(key: key);
//
//   final int endValue;
//
//   @override
//   BarraProgressoLinearState createState() => BarraProgressoLinearState();
// }
//
// class BarraProgressoLinearState extends State<BarraProgressoLinear> {
//   double _progress = 0;
//   double value = 0;
//   String? title;
//   String? content;
//
//   Future tick({String? title}) async {
//     setState(() {
//       _progress++;
//       value = _progress / widget.endValue;
//       this.title = title;
//     });
//   }
//
//   setValue(double x) {
//     value = x;
//   }
//
//   setContent(String x) {
//     content = x;
//   }
//
//   finish() {
//     Navigator.of(context).pop();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double x = value;
//
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         if (title != null) TextTitle(title!),
//         LinearProgressIndicator(value: x),
//         if (content != null) TextNormal(content!)
//       ],
//     );
//   }
// }
//
// class BarraProgressoCircular extends StatefulWidget {
//   const BarraProgressoCircular({Key? key, required this.endValue})
//       : super(key: key);
//
//   final int endValue;
//
//   @override
//   BarraProgressoCircularState createState() => BarraProgressoCircularState();
// }
//
// class BarraProgressoCircularState extends State<BarraProgressoCircular> {
//   double _progress = 0;
//   double value = 0;
//   String? title;
//
//   String? content;
//
//   update() {
//     setState(() {});
//   }
//
//   setContent(String x) {
//     content = x;
//   }
//
//   setTitle(String x) {
//     title = x;
//   }
//
//   Future tick({String? title}) async {
//     _progress++;
//     value = _progress / widget.endValue;
//     this.title = title;
//
//     update();
//   }
//
//   setValue(double x) {
//     value = x;
//   }
//
//   bool onError = false;
//
//   void setError(String title, String content) {
//     onError = true;
//
//     this.title = title;
//
//     this.content = content;
//
//     update();
//   }
//
//   finish() {
//     Navigator.of(context).pop();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         if (title != null) TextTitle(title!),
//         if (!onError) const CircularProgressIndicator(),
//         if (onError) const IconBig(Icons.error),
//         if (content != null) TextNormal(content!),
//         if (onError)
//           TextButton(onPressed: finish, child: const TextNormal('Fechar'))
//       ],
//     );
//   }
// }
//
// ///class BarraProgresso extends StatefulWidget {
// //   const BarraProgresso({Key? key, required this.endValue}) : super(key: key);
// //
// //   final int endValue;
// //
// //   @override
// //   BarraProgressoLinearState createState() => BarraProgressoLinearState();
// // }
// //
// // class BarraProgressoState extends State<BarraProgressoLinear> {
// //   double _progress = 0;
// //   double value = 0;
// //   String? title;
// //
// //   Future tick({String? title}) async {
// //     setState(() {
// //       _progress++;
// //       value = _progress / widget.endValue;
// //       this.title = title;
// //     });
// //   }
// //
// //   setValue(double x) {
// //     value = x;
// //   }
// //
// //   finish() {
// //     Navigator.of(context).pop();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     double x = value;
// //
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       children: [
// //         if (title != null) TextTitle(title!),
// //         const CircularProgressIndicator()
// //       ],
// //     );
// //   }
// // }
