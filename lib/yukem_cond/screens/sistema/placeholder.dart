import 'package:flutter/material.dart';

import '../../components/drawer/custom_drawer.dart';

class TelaPlaceholder extends StatelessWidget {
  const TelaPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(
        changeState: (callback) {},
      ),
      body: const Text("Placeholder"),
    );
  }
}
