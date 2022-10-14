import 'package:flutter/material.dart';

class BarraPesquisa extends StatelessWidget {
  const BarraPesquisa({Key? key, this.onPressed}) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: onPressed,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Icon(
                Icons.search,
                size: 32,
                color: Colors.black,
              ),
            ),
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
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
          ),
        ],
      ),
    );
  }
}
