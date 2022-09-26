import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/common/app/app_theme.dart';

class TileField extends StatelessWidget {
  const TileField({Key? key, required this.label, required this.icon})
      : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    var theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            icon,
            size: theme.sizes.normalIcon,
            color: theme.colorTheme.primaryColor,
          ),
          labelText: label,
          labelStyle: theme.textTheme.title3(),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
