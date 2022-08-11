import 'package:flutter/material.dart';

class ContainerUserAmbiente extends StatelessWidget {
  const ContainerUserAmbiente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.business_sharp,
                  size: 32,
                  color: Colors.black,
                ),
                labelText: "INSIRA O AMBIENTE AQUI",
                hintText: "INSIRA O AMBIENTE AQUI",
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
            child: RaisedButton(
              child: const Text(
                "VALIDAR AMBIENTE",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: (){

              },
            ),
          ),
        ),
      ],
    );
  }
}

