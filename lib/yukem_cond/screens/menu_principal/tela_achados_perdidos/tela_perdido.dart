import 'package:flutter/material.dart';

import 'moddels/achados_perdidos.dart';

class TelaPerdido extends StatefulWidget {
  const TelaPerdido({
    Key? key,
    required this.item,
  }) : super(key: key);

  final AchadosPerdidos item;

  @override
  State<TelaPerdido> createState() => _TelaPerdidoState();
}

class _TelaPerdidoState extends State<TelaPerdido> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Perdido"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.network(widget.item.imageUrl),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
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
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("OBJETO PERDIDO"),
                            Text(widget.item.titulo)
                          ],
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
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("OBSERVAÇÃO"),
                            Text(widget.item.observacao)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (newDate == null) return;
                        setState(() => date = newDate);
                      },
                      child: Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Data em que o objeto foi encontrado",
                              style: TextStyle(fontSize: 17),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.calendar_today),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text("${date.day}/${date.month}/${date.year}"),
                              ],
                            ),
                          ],
                        ),
                      ),
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
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('É meu'),
      ),
    );
  }
}
