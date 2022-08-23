import 'package:flutter/material.dart';

class TelaContainerVotacao extends StatefulWidget {
  const TelaContainerVotacao(
      {Key? key,
      required this.titulo,
      required this.criadopor,
      required this.status,
      required this.onPressed})
      : super(key: key);

  final String titulo;
  final String criadopor;
  final String status;
  final Function onPressed;
  @override
  State<TelaContainerVotacao> createState() => _TelaContainerVotacaoState();
}

class _TelaContainerVotacaoState extends State<TelaContainerVotacao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
          ),
        ],
      ),
      child: InkWell(
        onTap: () => widget.onPressed(),
        child: Card(
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 1,
                  thickness: 0.2,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Criado por: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          widget.criadopor,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Status: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          widget.status,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
