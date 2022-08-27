import 'package:flutter/material.dart';
import '../../components/drawer/custom_drawer.dart';
/* import 'package:percent_indicator/percent_indicator.dart'; */

class TelaVotacaoFechada extends StatefulWidget {
  const TelaVotacaoFechada({Key? key}) : super(key: key);

  @override
  _TelaVotacaoFechadaState createState() => _TelaVotacaoFechadaState();
}

class _TelaVotacaoFechadaState extends State<TelaVotacaoFechada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /*  backgroundColor: Colors.black87,
          leading: Padding(
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Criado por: ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Administrador",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "De: ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "20/08/2022 19:00",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        " Até: ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "28/08/2022 15:00",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Quem você Vota para Sindíco?",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "RESULTADO DA VOTAÇÃO:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           /*   Container(
              padding: const EdgeInsets.all(10),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 30,
                percent: 0.3,
                progressColor: Colors.blue,
                leading: Container(
                   padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Ana",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                center: const Text(
                  "30%",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ), 
             Container(
              padding: const EdgeInsets.all(10),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 30,
                percent: 0.1,
                progressColor: Colors.blue,
                leading: Container(
                   padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Eduardo",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                center: const Text(
                  "10%",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),  */
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "DETALHES",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Total de Votos: ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Status: ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    Text(
                                      "Fechada",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
