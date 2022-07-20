import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
PopupMenuEntry<int> TilePopupMenuItem(
    {required int value,
    required IconData icon,
    required String title,
    Function()? onPressed}) {
  return PopupMenuItem(
    value: value,
    child: SizedBox(
      width: 130,
      height: 50.0,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 05.0, top: 0.5),
              child: Text(title),
            ),
          ),
        ],
      ),
    ),
    onTap: () {
      if (onPressed != null) {
        onPressed();
      }
    },
  );
}
