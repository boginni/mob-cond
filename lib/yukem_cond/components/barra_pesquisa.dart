import 'package:flutter/material.dart';

class BarraPesquisa extends StatelessWidget {
  const BarraPesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(13),
            bottomRight: Radius.circular(13)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            size: 25,
            color: Colors.black,
          ),
          labelText: "PESQUISAR",
          hintText: "PESQUISAR",
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
