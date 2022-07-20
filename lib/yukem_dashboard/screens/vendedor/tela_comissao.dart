import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_dashboard/app_foundation.dart';
import 'package:yukem_dashboard/yukem_dashboard/custom_drawer.dart';

class TelaComissao extends StatefulWidget {
  const TelaComissao({Key? key}) : super(key: key);

  @override
  State<TelaComissao> createState() => _TelaComissaoState();
}

class _TelaComissaoState extends State<TelaComissao> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comissão'),
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
