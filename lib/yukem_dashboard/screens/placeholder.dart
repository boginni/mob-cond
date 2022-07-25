// ignore_for_file: implementation_imports, unnecessary_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yukem_dashboard/yukem_dashboard/custom_drawer.dart';

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