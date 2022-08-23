import 'package:flutter/material.dart';

class ContainerIconeTela extends StatefulWidget {
  const ContainerIconeTela(
      {Key? key,
      required this.icone,
      required this.nome,
      required this.onPressed})
      : super(key: key);

  final IconData icone;
  final String nome;
  final Function onPressed;

  @override
  State<ContainerIconeTela> createState() => _ContainerIconeTelaState();
}

class _ContainerIconeTelaState extends State<ContainerIconeTela> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            color: Colors.black87,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(0, 0)),
      ], borderRadius: BorderRadius.circular(13), color: Colors.white),
      child: FlatButton(
        onPressed: () => widget.onPressed(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.icone,
              size: 40,
              color: Colors.black87,
            ),
            Text(
              widget.nome,
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
