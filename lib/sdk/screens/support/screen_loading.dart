import 'package:flutter/material.dart';

class ScreenLoading extends StatelessWidget {
  final List<Widget> children;

  final bool material;
  final bool back;

  const ScreenLoading(
      {Key? key,
      required this.children,
      this.back = false,
      this.material = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget home = Scaffold(
      appBar: back
          ? AppBar(leading: BackButton(
              onPressed: () {
                Navigator.of(context).pop(context);
              },
            ))
          : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children +
              <Widget>[
                const SizedBox(
                  height: 8,
                ),
                const CircularProgressIndicator(),
              ],
        ),
      ),
    );

    if (material) {
      return MaterialApp(
        home: home,
      );
    }

    return home;
  }
}
