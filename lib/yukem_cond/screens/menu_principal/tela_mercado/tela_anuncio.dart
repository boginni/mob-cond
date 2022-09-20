import 'package:flutter/material.dart';

import 'moddels/mercado.dart';

class TelaAnuncio extends StatefulWidget {
  const TelaAnuncio({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Mercado item;

  @override
  State<TelaAnuncio> createState() => _TelaAnuncioState();
}

class _TelaAnuncioState extends State<TelaAnuncio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Mercado"),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                widget.item.imageUrl,
                height: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    widget.item.titulo,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Preço: R\$" + widget.item.valor.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Telefone/Whatsapp: " + widget.item.telefone.toString(),
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.item.descricao,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
