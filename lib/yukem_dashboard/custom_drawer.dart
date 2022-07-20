// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_foundation.dart';
import 'drawer_tile.dart';

int curId = 0;

int getNextId() {
  return curId++;
}

class CustomDrawer extends StatefulWidget {
  // final bool Function()? onChange = (){ return true;};

  const CustomDrawer({
    Key? key,
    required this.changeState,
  }) : super(key: key); //this.onChanges

  final Function(Function() callback) changeState;

  @override
  State<StatefulWidget> createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool logo = true;
    int i = 0;

    return Drawer(
      child: ListView(
        children: <Widget>[
          /// Implementar sistema pra mostrar logo customizada
          if (logo)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Yukem Vendas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  Text('Vendedor',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.left),
                  Text(Application.versao,
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.left),
                ],
              ),
            ),
          if (logo) Divider(color: Colors.grey[800]),
          // DrawerTile(
          //   iconData: Icons.home,
          //   title: 'TESTE',
          //   page: i++,
          // ),

           DrawerExpansionTile(
            iconData: CupertinoIcons.chart_bar_circle,
            title: 'Dashboard',
            id: 0,
            children: [
              DrawerTile(
                iconData: Icons.monetization_on_outlined,
                title: 'Vendas',
                page: i++,
              ),
              const DrawerTile(
                iconData: CupertinoIcons.cube_box,
                title: 'Contas',
                page: 0,
              ),
              const DrawerTile(
                iconData: Icons.show_chart,
                title: 'Vendedores',
                page: 0,
              ),
              const DrawerTile(
                iconData: Icons.monetization_on_outlined,
                title: 'Projeções',
                page: 0,
              ),
            ],
          ),

          DrawerExpansionTile(
            iconData: CupertinoIcons.person_alt,
            title: 'Vendedor',
            id: 1,
            children: [
              DrawerTile(
                iconData: Icons.monetization_on_outlined,
                title: 'Comissão',
                page: i++,
              ),
              DrawerTile(
                iconData: CupertinoIcons.cube_box,
                title: 'Crítica',
                page: i++,
              ),
              DrawerTile(
                iconData: Icons.show_chart,
                title: 'Metas',
                page: i++,
              ),
              DrawerTile(
                iconData: Icons.monetization_on_outlined,
                title: 'Faturamento',
                page: i++,
              ),
            ],
          ),


          DrawerExpansionTile(
            iconData: CupertinoIcons.building_2_fill,
            title: 'Operador',
            id: 2,
            children: [
              DrawerTile(
                iconData: Icons.monetization_on_outlined,
                title: 'Produtos',
                page: i++,
              ),
              DrawerTile(
                iconData: Icons.show_chart,
                title: 'Metas',
                page: i++,
              ),
            ],
          ),

          // const DrawerExpansionTile(
          //   iconData: Icons.add_chart,
          //   title: 'Gráficos',
          //   id: 1,
          //   children: [
          //     DrawerTile(
          //       iconData: Icons.monetization_on_outlined,
          //       title: 'Vendas',
          //       page: 0,
          //     ),
          //     DrawerTile(
          //       iconData: CupertinoIcons.cube_box,
          //       title: 'Contas',
          //       page: 0,
          //     ),
          //   ],
          // ),

          Divider(color: Colors.grey[800]),
          DrawerTile(
            iconData: Icons.settings,
            title: 'Configurações',
            page: i++,
          ),
          Divider(color: Colors.grey[800]),
          DrawerTile(
            iconData: Icons.logout,
            title: 'Sair',
            page: i++,
            onPressed: () => Application.logout(context),
          ),
        ],
      ),
    );
  }
}

bool showConsultas = false;
