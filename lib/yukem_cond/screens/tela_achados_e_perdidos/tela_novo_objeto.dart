import 'package:flutter/material.dart';

import 'container_achado_tela.dart';
import 'container_perdido_tela.dart';

class TelaNovoObjeto extends StatefulWidget {
  const TelaNovoObjeto({Key? key}) : super(key: key);

  @override
  _TelaNovoObjetoState createState() => _TelaNovoObjetoState();
}

class _TelaNovoObjetoState extends State<TelaNovoObjeto> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Achados e Perdidos"),
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(text: 'Achado'),
                Tab(text: 'Perdido'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: const TabBarView(
            children: [
              ContainerAchadoTela(),
              ContainerPerdidoTela(),
            ],
          ),
          bottomNavigationBar: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Salvar'),
          ),
        ),
      );
}
