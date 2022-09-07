import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/drawer/custom_drawer.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_principal/components/bottom_bar.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_principal/tiles/container_icone_tela.dart';

import '../../../sdk/utility/page_manager.dart';
import '../../app_foundation.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    final pg = PageManager.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        /* backgroundColor: Colors.black87,
        leading: const Padding(
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
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
        ), */
        title: const Text("Nome"),
      ),
      drawer: CustomDrawer(changeState: (cb) {}),
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 90),
        children: [
          ContainerIconeTela(
              icone: Icons.door_front_door_outlined,
              nome: "Place Holder",
              onPressed: () {
                pg.setPage(1);
              }),
          ContainerIconeTela(
              icone: Icons.door_front_door_outlined,
              nome: "Acesso",
              onPressed: () {
                pg.setPage(2);
              }),
          ContainerIconeTela(
              icone: Icons.edit_location_alt_outlined,
              nome: "Ocorrências",
              onPressed: () {
                pg.setPage(3);
              }),
          ContainerIconeTela(
              icone: Icons.group_outlined,
              nome: "Visitantes",
              onPressed: () {
                pg.setPage(4);
              }),
          ContainerIconeTela(
              icone: Icons.calendar_today,
              nome: "Reservas",
              onPressed: () {
                pg.setPage(5);
              }),
          ContainerIconeTela(
              icone: Icons.newspaper,
              nome: "Notícias",
              onPressed: () {
                pg.setPage(6);
              }),
          ContainerIconeTela(
              icone: Icons.post_add,
              nome: "Pedidos",
              onPressed: () {
                pg.setPage(7);
              }),
          ContainerIconeTela(
              icone: Icons.how_to_vote_outlined,
              nome: "Votação Online",
              onPressed: () {
                pg.setPage(8);
              }),
          ContainerIconeTela(
              icone: Icons.search,
              nome: "Achados e Perdidos",
              onPressed: () {
                pg.setPage(9);
              }),
          ContainerIconeTela(
              icone: Icons.featured_play_list_outlined,
              nome: "Documentos",
              onPressed: () {
                pg.setPage(10);
              }),
          ContainerIconeTela(
              icone: Icons.group_add_outlined,
              nome: "Atividade",
              onPressed: () {
                pg.setPage(11);
              }),
          ContainerIconeTela(
              icone: Icons.sim_card_alert_outlined,
              nome: "Confidencial",
              onPressed: () {
                pg.setPage(12);
              }),
          ContainerIconeTela(
              icone: Icons.precision_manufacturing_outlined,
              nome: "Manutenção",
              onPressed: () {
                pg.setPage(13);
              }),
          ContainerIconeTela(
              icone: Icons.logout,
              nome: "Sair",
              onPressed: () => Application.logout(context)),
        ],
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
