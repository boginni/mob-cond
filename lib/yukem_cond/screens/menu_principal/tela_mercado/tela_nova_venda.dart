
import 'package:flutter/material.dart';

class TelaNovaVenda extends StatefulWidget {
  const TelaNovaVenda({
    Key? key,
  }) : super(key: key);
  @override
  State<TelaNovaVenda> createState() => _TelaNovaVendaState();
}

class _TelaNovaVendaState extends State<TelaNovaVenda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Mercado"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
       
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
            child: const TextField(
              decoration: InputDecoration(
                labelText: "TÍTULO DA VENDA",
                hintText: "TÍTULO DA VENDA",
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
          const SizedBox(
            height: 10,
          ),
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
            child: const TextField(
              decoration: InputDecoration(
                labelText: "DESCRIÇÃO DA VENDA",
                hintText: "DESCRIÇÃO DA VENDA",
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
          const SizedBox(
            height: 10,
          ),
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
            child: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                
                labelText: "VALOR R\$",
                hintText: "VALOR R\$",
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
          const SizedBox(
            height: 10,
          ),
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
            child: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "CELULAR",
                hintText: "CELULAR",
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
          const SizedBox(
            height: 10,
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
          )
        ],
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
         /*  Application.navigate(context, const TelaNovaVenda()); */
        },
        child: const Text('Finalizar'),
      ),
    );
  }
}
