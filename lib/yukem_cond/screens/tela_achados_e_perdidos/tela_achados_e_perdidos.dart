import 'package:flutter/material.dart';

import '../../app_foundation.dart';
import 'container_achado_tela.dart';
import 'container_perdido_tela.dart';

class TelaAchadosePerdidos extends StatefulWidget {
  const TelaAchadosePerdidos({Key? key}) : super(key: key);

  @override
  _TelaAchadosePerdidosState createState() => _TelaAchadosePerdidosState();
}

class _TelaAchadosePerdidosState extends State<TelaAchadosePerdidos> {
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
          bottomNavigationBar: Row(
            children: [
              Expanded(
                child: Material(
                  color: Colors.blue,
                  child: InkWell(
                    onTap: () {
                      /*  Application.navigate(context, const TelaAchadosePerdidos()); */
                    },
                    child: const SizedBox(
                      height: kToolbarHeight,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'SALVAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
