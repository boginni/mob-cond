import 'package:flutter/material.dart';
import 'package:yukem_dashboard/sdk/utility/page_manager.dart';

import '../../components/drawer/custom_drawer.dart';
import 'container_lista_noticias_tela.dart';

class TelaListaNoticias extends StatefulWidget {
  const TelaListaNoticias({Key? key}) : super(key: key);

  @override
  State<TelaListaNoticias> createState() => _TelaListaNoticiasState();
}

class _TelaListaNoticiasState extends State<TelaListaNoticias> {
  @override
  Widget build(BuildContext context) {
    final pg = PageManager.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Nome"),
        ),
        drawer: CustomDrawer(changeState: (cb) {}),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.black,
                    ),
                    labelText: "PESQUISAR",
                    hintText: "PESQUISAR",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ContainerListaNoticiasTela(
                    titulo: "Estamos Desenvolvendo o app Yukem Cond",
                    url: "https://picsum.photos/250?image=9",
                    qtdlikes: "120",
                    qtdcomentarios: "52",
                    notica: () {
                      pg.setPage(5);
                    },
                    comentarios: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
