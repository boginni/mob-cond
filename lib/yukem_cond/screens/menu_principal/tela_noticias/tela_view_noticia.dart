import 'package:flutter/material.dart';

import 'moddels/noticia.dart';

class TelaViewNoticia extends StatefulWidget {
  const TelaViewNoticia({Key? key, required this.item}) : super(key: key);

  final Noticia item;

  @override
  State<TelaViewNoticia> createState() => _TelaViewNoticiaState();
}

class _TelaViewNoticiaState extends State<TelaViewNoticia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notícia"),
      ),
      // drawer: CustomDrawer(changeState: (cb) {}),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(widget.item.imageUrl),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    widget.item.titulo,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.item.conteudo,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
