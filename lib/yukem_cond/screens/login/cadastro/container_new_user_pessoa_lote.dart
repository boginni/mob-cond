import 'package:flutter/material.dart';

class ContainerUserPessoaLote extends StatelessWidget {
  const ContainerUserPessoaLote({Key? key}) : super(key: key);

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
                  Icons.person,
                  size: 32,
                  color: Colors.black,
                ),
                labelText: "NOME",
                hintText: "NOME",
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
                  Icons.home_work_outlined,
                  size: 32,
                  color: Colors.black,
                ),
                labelText: "LOTE",
                hintText: "LOTE",
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
      ],
    );
  }
}
