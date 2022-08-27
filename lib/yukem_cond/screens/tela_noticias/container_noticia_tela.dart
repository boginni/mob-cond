import 'package:flutter/material.dart';

class ContainerNoticiaTela extends StatefulWidget {
  const ContainerNoticiaTela(
      {Key? key,
      required this.urlnoticia,
      required this.titulonotica,
      required this.textonoticia})
      : super(key: key);
  final String urlnoticia;
  final String titulonotica;
  final String textonoticia;
  @override
  State<ContainerNoticiaTela> createState() => _ContainerNoticiaTelaState();
}

class _ContainerNoticiaTelaState extends State<ContainerNoticiaTela> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(widget.urlnoticia),
        Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                widget.titulonotica,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.textonoticia,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        )
      ],
    );
  }
}
