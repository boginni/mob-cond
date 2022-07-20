// import 'package:flutter/material.dart';
//
// import 'custom_icons.dart';
//
// class IconDynamic extends StatelessWidget {
//   static int countIcon = 0;
//
//   const IconDynamic(
//       {Key? key,
//       required this.primary,
//       required this.secondary,
//       this.size = 16})
//       : super(key: key);
//
//   final IconData primary;
//   final IconData secondary;
//   @Deprecated("Não terá mais função após mapear todas as ocorrências")
//   final double size;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return IconTheme(
//       data: Theme.of(context).primaryIconTheme,
//       child: IconNormal(++countIcon % 2 != 0 ? primary : secondary),
//     );
//   }
// }
