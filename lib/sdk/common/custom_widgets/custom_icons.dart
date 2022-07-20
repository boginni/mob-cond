// import 'package:flutter/material.dart';
//
// import '../../models/configuracao/app_system.dart';
//
// enum StatusIconTypes { ok, warning, closed, expired, sync }
//
// class IconStatus extends StatelessWidget {
//   final StatusIconTypes statusIconType;
//
//   const IconStatus({Key? key, required this.statusIconType}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//     double size = appSystem.getIconScale() * .25 + 20;
//
//     switch (statusIconType) {
//       case StatusIconTypes.ok:
//         return Icon(
//           Icons.check_circle,
//           color: Colors.green,
//           size: size,
//         );
//       case StatusIconTypes.warning:
//         return Icon(
//           Icons.warning_rounded,
//           color: Colors.yellow,
//           size: size,
//         );
//       case StatusIconTypes.closed:
//         return Icon(
//           Icons.close,
//           color: Colors.red,
//           size: size,
//         );
//       case StatusIconTypes.expired:
//         return Icon(
//           Icons.update,
//           color: Colors.orange,
//           size: size,
//         );
//       case StatusIconTypes.sync:
//         return Icon(
//           Icons.sync,
//           color: Colors.orange,
//           size: size,
//         );
//     }
//   }
// }
//
// class IconSmaller extends StatelessWidget {
//   final IconData? icon;
//   final Color color;
//
//   const IconSmaller(this.icon, {Key? key, this.color = Colors.black})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return IconTheme(
//       data: Theme.of(context).primaryIconTheme,
//       child: Icon(
//         icon,
//         size: appSystem.getIconScale() * .50 + 18,
//         color: color,
//       ),
//     );
//   }
// }
//
// class IconSmall extends StatelessWidget {
//   final IconData? icon;
//   final Color color;
//
//   const IconSmall(this.icon, {Key? key, this.color = Colors.black})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return IconTheme(
//       data: Theme.of(context).primaryIconTheme,
//       child: Icon(
//         icon,
//         size: appSystem.getIconScale() * .75 + 24,
//         color: color,
//       ),
//     );
//   }
// }
//
// class IconNormal extends StatelessWidget {
//   final IconData? icon;
//   final Color color;
//
//   const IconNormal(this.icon, {Key? key, this.color = Colors.black})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//     return IconTheme(
//       data: Theme.of(context).primaryIconTheme,
//       child: Icon(
//         icon,
//         size: appSystem.getIconScale() + 32,
//         color: color,
//       ),
//     );
//   }
// }
//
// class IconBig extends StatelessWidget {
//   final IconData? icon;
//   final Color color;
//
//   const IconBig(this.icon, {Key? key, this.color = Colors.black})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     return IconTheme(
//       data: Theme.of(context).primaryIconTheme,
//       child: Icon(
//         icon,
//         size: appSystem.getIconScale() * 1.75 + 46,
//         color: color,
//       ),
//     );
//   }
// }
