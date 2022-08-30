import 'package:flutter/material.dart';

import '../../../sdk/models/votacao/user.dart';

import 'moddels/votacao.dart';

class TelaVotacaoAberta extends StatefulWidget {
  const TelaVotacaoAberta({Key? key, required this.item}) : super(key: key);

  final Votacao item;

  @override
  _TelaVotacaoAbertaState createState() => _TelaVotacaoAbertaState();
}

class _TelaVotacaoAbertaState extends State<TelaVotacaoAberta> {
  static const users = [
    User(
      name: 'Eduardo',
      description: 'Clique aqui para votar no Eduardo',
    ),
    User(
      name: 'Ana',
      description: 'Clique aqui para votar na Ana',
    ),
  ];

  User selectedValue = users.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* Padding(
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
        ) */
        title: const Text("Votação Aberta"),
      ),
      // drawer: CustomDrawer(changeState: (cb) {}),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(children: const [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Quem você escolhe para Síndico ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 16),
                children: users
                    .map((user) => Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: RadioListTile<User>(
                            value: user,
                            groupValue: selectedValue,
                            title: Text(user.name),
                            subtitle: Text(user.description),
                            onChanged: (value) =>
                                setState(() => selectedValue = value!),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.blue,
              child: InkWell(
                onTap: () {},
                child: const SizedBox(
                  height: kToolbarHeight,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'ENVIAR RESPOSTA',
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
    );
  }
}
