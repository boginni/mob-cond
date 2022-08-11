import 'package:flutter/material.dart';

class ContainerUserCadastro extends StatefulWidget {
  const ContainerUserCadastro({Key? key}) : super(key: key);

  @override
  State<ContainerUserCadastro> createState() => _ContainerUserCadastroState();
}

class _ContainerUserCadastroState extends State<ContainerUserCadastro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(
          height: 10,
        ),
        Padding(
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
                labelText: "LOGIN",
                hintText: "LOGIN",
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
        Padding(
          padding: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
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
        Padding(
          padding: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  size: 32,
                  color: Colors.black,
                ),
                labelText: "CONFIRMAR SENHA",
                hintText: "CONFIRMAR SENHA",
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
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
