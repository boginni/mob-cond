

import 'package:flutter/material.dart';
import 'package:yukem_dashboard/sdk/common/structure/text_handler.dart';

class TelaPlaceHolder extends StatelessWidget {
  const TelaPlaceHolder({Key? key, required this.callback}) : super(key: key);

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => callback(),
              child: const AppText('Sair'),
            ),
          )
        ],
      ),
    );
  }
}
