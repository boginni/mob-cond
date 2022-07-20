// import 'package:flutter/material.dart';
//
// import '../../models/configuracao/app_system.dart';
// import 'custom_icons.dart';
// import 'custom_text.dart';
// import 'icon_dynamic.dart';
//
// class ButtonSalvar extends StatelessWidget {
//   final void Function() onPressed;
//   final bool enabled;
//
//   const ButtonSalvar({Key? key, required this.enabled, required this.onPressed})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return ElevatedButton(
//         onPressed: enabled
//             ? () {
//                 FocusManager.instance.primaryFocus?.unfocus();
//                 onPressed();
//               }
//             : null,
//         child: Text(
//           'Salvar',
//           style: TextStyle(
//               color: Colors.black, fontSize: 12 + appSystem.fontScale),
//         ));
//   }
// }
//
// class ButtonLimpar extends StatelessWidget {
//   final void Function() onPressed;
//   final bool enabled;
//
//   const ButtonLimpar({Key? key, required this.enabled, required this.onPressed})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return ElevatedButton(
//       onPressed: enabled
//           ? () {
//               FocusManager.instance.primaryFocus?.unfocus();
//               onPressed();
//             }
//           : null,
//       child: Text(
//         'Limpar',
//         style:
//             TextStyle(color: Colors.black, fontSize: 12 + appSystem.fontScale),
//       ),
//     );
//   }
// }
//
// class ButtonPesquisar extends StatelessWidget {
//   final void Function() onPressed;
//   final bool enabled;
//
//   const ButtonPesquisar(
//       {Key? key, this.enabled = true, required this.onPressed})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return ElevatedButton(
//       onPressed: enabled
//           ? () {
//               FocusManager.instance.primaryFocus?.unfocus();
//               onPressed();
//             }
//           : null,
//       child: Text(
//         'Pesquisar',
//         style:
//             TextStyle(color: Colors.black, fontSize: 12 + appSystem.fontScale),
//       ),
//     );
//   }
// }
//
// class ButtonIconCustom extends StatelessWidget {
//   const ButtonIconCustom({
//     Key? key,
//     required this.icon,
//     required this.name,
//     required this.onClickFunction,
//   }) : super(key: key);
//
//   final IconDynamic icon;
//   final String name;
//   final void Function() onClickFunction;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return TextButton(
//       onPressed: () => onClickFunction,
//       child: Row(
//         children: <Widget>[
//           icon,
//           const SizedBox(
//             width: 8,
//           ),
//           Flexible(
//             child: TextTitle(
//               name,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ButtonIcon extends StatelessWidget {
//   const ButtonIcon({
//     Key? key,
//     required this.icon,
//     required this.onPressed,
//   }) : super(key: key);
//
//   final IconData? icon;
//   final void Function() onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return GestureDetector(
//       onTap: onPressed,
//       child: IconSmall(icon),
//     );
//   }
// }
//
// class ButtonAppBar extends StatelessWidget {
//   final Function() onPressed;
//   final bool enabled;
//   final IconData icon;
//
//   const ButtonAppBar(
//       {Key? key,
//       required this.onPressed,
//       this.enabled = true,
//       required this.icon})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 20),
//       child: GestureDetector(
//         onTap: onPressed,
//         child: IconNormal(
//           icon,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
