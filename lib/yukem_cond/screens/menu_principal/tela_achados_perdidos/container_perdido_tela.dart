import 'package:flutter/material.dart';

class ContainerPerdidoTela extends StatefulWidget {
  const ContainerPerdidoTela({
    Key? key,
  }) : super(key: key);
  @override
  State<ContainerPerdidoTela> createState() => _ContainerPerdidoTelaState();
}

class _ContainerPerdidoTelaState extends State<ContainerPerdidoTela> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
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
            child: const TextField(
              decoration: InputDecoration(
                labelText: "INFORME O OBJETO PERDIDO",
                hintText: "INFORME O OBJETO PERDIDO",
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
            child: const TextField(
              decoration: InputDecoration(
                labelText: "OBSERVAÇÃO",
                hintText: "OBSERVAÇÃO",
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
                    "Data em que o objeto foi perdido",
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
    );
  }
}
