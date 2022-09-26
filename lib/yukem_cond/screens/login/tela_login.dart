import 'package:flutter/material.dart';

import 'cadastro/tela_cadastro.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key, required this.subimit}) : super(key: key);

  final Function() subimit;

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text(
                      'Suporte',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: const Icon(
                      Icons.whatsapp,
                      size: 24.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaCadastro(),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Registre-se',
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_right_alt_sharp,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.business,
                        size: 32,
                        color: Colors.black,
                      ),
                      labelText: "AMBIENTE",
                      hintText: "AMBIENTE",
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
              const Padding(
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person_pin,
                        size: 32,
                        color: Colors.black,
                      ),
                      labelText: "USUÁRIO",
                      hintText: "USUÁRIO",
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
              const Padding(
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        size: 32,
                        color: Colors.black,
                      ),
                      labelText: "SENHA",
                      hintText: "SENHA",
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
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: 500,
                  height: 50,
                  child: TextButton(
                    child: const Text(
                      "Acessar",
                      style: ,
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    // color: Colors.blue,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(12),
                    // ),
                    onPressed: () => widget.subimit(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  onPressed: () {},
                  child: const Text("Esqueci minha senha"),
                ),
              ),
            ],
          ),
        )));
  }
}
