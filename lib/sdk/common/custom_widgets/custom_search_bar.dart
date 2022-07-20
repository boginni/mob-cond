// import 'package:flutter/material.dart';
//
// import 'custom_icons.dart';
//
// class SearchBar extends StatelessWidget {
//   final TextEditingController controller;
//
//   final Function() onPrimary;
//   final Function() onSecondary;
//   final Function(String s) onChanged;
//   final FocusNode? focusNode;
//
//   final bool autoFocous;
//
//   const SearchBar({
//     Key? key,
//     required this.controller,
//     required this.onPrimary,
//     required this.onSecondary,
//     required this.onChanged,
//     this.focusNode,
//     this.autoFocous = false,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color.fromARGB(220, 200, 200, 200),
//       child: Padding(
//         padding: const EdgeInsets.all(2.0),
//         child: Row(
//           children: [
//             Flexible(
//               flex: 1,
//               child: TextButton(
//                 onPressed: onSecondary,
//                 focusNode: focusNode,
//                 autofocus: autoFocous,
//                 child: const IconSmall(Icons.more),
//               ),
//             ),
//             const SizedBox(
//               width: 4,
//             ),
//             Flexible(
//               flex: 6,
//               child: TextFormField(
//                 controller: controller,
//                 onChanged: onChanged,
//               ),
//             ),
//             const SizedBox(
//               width: 4,
//             ),
//             Flexible(
//               flex: 1,
//               child: TextButton(
//                 onPressed: onPrimary,
//                 child: const IconSmall(Icons.search),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
