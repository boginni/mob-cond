import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom_drawer.dart';

class TelaFaturamento extends StatefulWidget {
  const TelaFaturamento({Key? key}) : super(key: key);

  @override
  State<TelaFaturamento> createState() => _TelaFaturamentoState();
}

class _TelaFaturamentoState extends State<TelaFaturamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faturamento'),
      ),
      drawer: CustomDrawer(
        changeState: (x) {
          setState(x);
        },
      ),
      body: Container(),
    );
  }
}
