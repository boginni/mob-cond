import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_ocorrencia/moddels/ocorrencia.dart';

import '../../../style/default_style.dart';

class ContainerOcorrencia extends StatefulWidget {
  const ContainerOcorrencia({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Ocorrencia item;

  @override
  State<ContainerOcorrencia> createState() => _ContainerOcorrenciaState();
}

class _ContainerOcorrenciaState extends State<ContainerOcorrencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ocorrências"),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: DefaultStyle.tilePadding(),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Container(
                  padding: DefaultStyle.tilePadding(),
                  child: Column(
                    children: [
                      const Text(
                        "Abertura",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Criado por: " + widget.item.usuario,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Aberto em: " + widget.item.dataabertura,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Status: " + widget.item.status,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Datalhes Da Ocorrência: " + widget.item.descricao,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: DefaultStyle.tilePadding(),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Container(
                  padding: DefaultStyle.tilePadding(),
                  child: Column(
                    children: [
                      const Text(
                        "Resolução",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Equipe: " + widget.item.equipe,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Responsável: " + widget.item.responsavel,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Data para finalização: " +
                            widget.item.dataprevisaofinalizado,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Posicionamento da ocorrência: " +
                            widget.item.posicionamento,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: DefaultStyle.tilePadding(),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Container(
                  padding: DefaultStyle.tilePadding(),
                  child: Column(
                    children: [
                      const Text(
                        "Resolução",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Image.network(
                        widget.item.imageurl,
                        height: 300,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          /* Application.navigate(context, const TelaNovaVenda()); */
        },
        child: const Text('Inserir Anexo'),
      ),
    );
  }
}
