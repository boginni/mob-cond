import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_dashboard/app_foundation.dart';
import 'package:yukem_dashboard/yukem_dashboard/custom_drawer.dart';

class TelaMetasVendedor extends StatefulWidget {
  const TelaMetasVendedor({Key? key}) : super(key: key);

  @override
  State<TelaMetasVendedor> createState() => _TelaMetasVendedorState();
}

class _TelaMetasVendedorState extends State<TelaMetasVendedor> {

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metas Vendedor'),
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
