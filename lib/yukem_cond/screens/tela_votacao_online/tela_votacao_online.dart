import 'package:flutter/material.dart';

import '../../../sdk/utility/page_manager.dart';
import '../../components/drawer/custom_drawer.dart';
import 'container_status_tela.dart';

class TelaVotacaoOnline extends StatefulWidget {
  const TelaVotacaoOnline({Key? key}) : super(key: key);

  @override
  _TelaVotacaoOnlineState createState() => _TelaVotacaoOnlineState();
}

const String aberto = "Aberto";

class _TelaVotacaoOnlineState extends State<TelaVotacaoOnline> {
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
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: [
                    TelaContainerVotacao(
                      titulo: "Teste",
                      criadopor: "João",
                      status: "Aberto",
                      onPressed: () {
                        if (aberto == "Aberto") {
                          pg.setPage(3);
                        } else {
                          pg.setPage(4);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
