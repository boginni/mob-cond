import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_dashboard/custom_drawer.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/dashboard/temp1.dart';

class TelaVendas extends StatefulWidget {
  const TelaVendas({Key? key}) : super(key: key);

  @override
  State<TelaVendas> createState() => _TelaVendasState();
}

class _TelaVendasState extends State<TelaVendas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vendas'),
      ),
      drawer: CustomDrawer(
        changeState: (x) {
          setState(x);
        },
      ),
      body: ListView(
        children: [

          Row(mainAxisSize: MainAxisSize.max,children: [Expanded(child: LinearChart()), Expanded(child: LinearChart())],)

        ],
      ),
    );
  }
}
