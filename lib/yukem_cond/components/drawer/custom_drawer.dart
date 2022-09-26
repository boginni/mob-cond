import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/tela_configuracao/tela_configuracao.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/tela_suporte/tela_suporte.dart';
import 'package:yukem_dashboard/yukem_cond/screens/sistema/tela_usuario/tela_usuario.dart';

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
            InkWell(
              onTap: () {
                Application.navigate(context, const TelaUsuario());
              },
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 20),
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 36,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Text('Nome do Usuário'),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            DrawerTile(
              iconData: Icons.home,
              title: 'Home',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.door_front_door_outlined,
              title: 'Acesso',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.edit_location_alt_outlined,
              title: 'Ocorrências',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.group_outlined,
              title: 'Visitantes',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.calendar_today,
              title: 'Reservas',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.newspaper,
              title: 'Notícias',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.post_add,
              title: 'Pedidos',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.how_to_vote_outlined,
              title: 'Votação Online',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.search,
              title: 'Achados e Perdidos',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.featured_play_list_outlined,
              title: 'Documentos',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.group_add_outlined,
              title: 'Atividades',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.shopping_cart_outlined,
              title: 'Mercado',
              page: i++,
            ),
            DrawerTile(
              iconData: Icons.precision_manufacturing_outlined,
              title: 'Manutenção',
              page: i++,
            ),
            const Divider(
              height: 2,
              thickness: 0.2,
              color: Colors.black,
            ),
            DrawerTile(
              iconData: Icons.settings,
              title: 'Configurações',
              onPressed: () {
                Application.navigate(context, const TelaConfiguracao());
              },
            ),
            DrawerTile(
              iconData: Icons.whatsapp,
              title: 'Suporte',
              onPressed: () {
                Application.navigate(context, const TelaSuporte());
              },
            ),
            const Divider(
              height: 2,
              thickness: 0.2,
              color: Colors.black,
            ),
            DrawerTile(
              iconData: Icons.logout,
              title: 'Sair',
              onPressed: () {
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
