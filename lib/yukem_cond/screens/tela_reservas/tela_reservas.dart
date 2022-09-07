import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/drawer/custom_drawer.dart';

class TelaReservas extends StatelessWidget {
  const TelaReservas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(
        changeState: (callback) {},
      ),
      body: const Text("Reservas"),
    );
  }
}
