import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custom_drawer.dart';

class TelaPlaceholder extends StatelessWidget {
  const TelaPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(
        changeState: (callback) {},
      ),
      body: Text("Placeholder"),
    );
  }
}
