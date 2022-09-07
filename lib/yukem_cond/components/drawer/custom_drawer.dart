import 'package:flutter/material.dart';

import '../../../sdk/utility/page_manager.dart';
import '../../app_foundation.dart';
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
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String txt = '';

  @override
  Widget build(BuildContext context) {
    bool logo = true;
    int i = 0;

    final pg = PageManager.of(context);

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              child: const ListTile(
                leading: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                ),
                title: Text('Menu Lateral'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                pg.setPage(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Placeholder'),
              onTap: () {
                pg.setPage(1);
              },
            ),
            const Divider(
              height: 1,
              thickness: 0.2,
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.door_front_door_outlined),
              title: const Text('Ocorrências'),
              onTap: () {
                pg.setPage(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit_location_alt_outlined),
              title: const Text('Ocorrências'),
              onTap: () {
                pg.setPage(3);
              },
            ),
            ListTile(
              leading: const Icon(Icons.group_outlined),
              title: const Text('Visitantes'),
              onTap: () {
                pg.setPage(4);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Reservas'),
              onTap: () {
                pg.setPage(5);
              },
            ),
            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text('Notícias'),
              onTap: () {
                pg.setPage(6);
              },
            ),
            ListTile(
              leading: const Icon(Icons.post_add),
              title: const Text('Pedidos'),
              onTap: () {
                pg.setPage(7);
              },
            ),
            ListTile(
              leading: const Icon(Icons.how_to_vote_outlined),
              title: const Text('Votação Online'),
              onTap: () {
                pg.setPage(8);
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Achados e Perdidos'),
              onTap: () {
                pg.setPage(9);
              },
            ),
            ListTile(
              leading: const Icon(Icons.featured_play_list_outlined),
              title: const Text('Documentos'),
              onTap: () {
                pg.setPage(10);
              },
            ),
            ListTile(
              leading: const Icon(Icons.group_add_outlined),
              title: const Text('Atividades'),
              onTap: () {
                pg.setPage(11);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart_outlined),
              title: const Text('Mercado'),
              onTap: () {
                pg.setPage(12);
              },
            ),
            ListTile(
              leading: const Icon(Icons.precision_manufacturing_outlined),
              title: const Text('Manutenção'),
              onTap: () {
                pg.setPage(13);
              },
            ),
            const Divider(
              height: 1,
              thickness: 0.2,
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.whatsapp),
              title: const Text('Suporte'),
              onTap: () {},
            ),
            const Divider(
              height: 1,
              thickness: 0.2,
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: () {
                Application.logout(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

bool showConsultas = false;

Widget oldDrawer(BuildContext context, bool logo) {
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
                  'Yukem Cond',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.left,
                ),
                Text('Uusário',
                    style: TextStyle(fontSize: 14), textAlign: TextAlign.left),
                Text(Application.versao,
                    style: TextStyle(fontSize: 12), textAlign: TextAlign.left),
              ],
            ),
          ),
        if (logo) Divider(color: Colors.grey[800]),
        Divider(color: Colors.grey[800]),
        DrawerTile(
          iconData: Icons.home,
          title: 'TelaPrincipal',
          page: i++,
        ),
        Divider(color: Colors.grey[800]),
        DrawerTile(
          iconData: Icons.home,
          title: 'Placeholder',
          page: i++,
        ),
        Divider(color: Colors.grey[800]),
        DrawerTile(
          iconData: Icons.how_to_vote_outlined,
          title: 'Votação Online',
          page: i++,
        ),
        Divider(color: Colors.grey[800]),
        DrawerTile(
          iconData: Icons.newspaper,
          title: 'Notícias',
          page: i++,
        ),
        Divider(color: Colors.grey[800]),
        DrawerTile(
          iconData: Icons.search,
          title: 'Achados e Perdidos',
          page: i++,
        ),
        Divider(color: Colors.grey[800]),
        DrawerTile(
          iconData: Icons.logout,
          title: 'Sair',
          page: 999,
          onPressed: () => Application.logout(context),
        ),
      ],
    ),
  );
}
