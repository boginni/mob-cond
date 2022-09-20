import 'package:flutter/material.dart';


class TelaNovaOcorrencia extends StatefulWidget {
  const TelaNovaOcorrencia({Key? key}) : super(key: key);

  @override
  State<TelaNovaOcorrencia> createState() => _TelaNovaOcorrenciaState();
}

class _TelaNovaOcorrenciaState extends State<TelaNovaOcorrencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Nova Ocorrência"),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(13)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "DESCRIÇÃO DA OCORRÊNCIA",
                        hintText: "DESCRIÇÃO DA OCORRÊNCIA",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: const Center(child: Text("Inserir Anexo")),
              ),
            ),
          ],
        ));
  }
}
