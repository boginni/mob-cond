import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  const AppText(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
