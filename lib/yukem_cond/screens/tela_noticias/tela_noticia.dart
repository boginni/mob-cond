import 'package:flutter/material.dart';
import '../../components/drawer/custom_drawer.dart';
import 'container_noticia_tela.dart';

class TelaNoticia extends StatefulWidget {
  const TelaNoticia({Key? key}) : super(key: key);

  @override
  State<TelaNoticia> createState() => _TelaNoticiaState();
}

class _TelaNoticiaState extends State<TelaNoticia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nome"),
      ),
      drawer: CustomDrawer(changeState: (cb) {}),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: const [
          ContainerNoticiaTela(
            urlnoticia:
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
            titulonotica: "TITÚLO DA NOTÍCIA",
            textonoticia:
                "Este é o texto da notícia Este é o texto da notícia Este é o texto da notícia Este é o texto da notícia Este é o texto da notícia Este é o texto da notícia ",
          ),
        ],
      ),
    );
  }
}
