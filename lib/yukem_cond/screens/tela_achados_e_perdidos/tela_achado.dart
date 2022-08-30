import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_achados_e_perdidos/moddels/achados_e_perdidos.dart';

class TelaAchado extends StatefulWidget {
  const TelaAchado({
    Key? key,
    required this.item,
  }) : super(key: key);

  final AchadosePerdidos item;
  @override
  State<TelaAchado> createState() => _TelaAchadoState();
}

class _TelaAchadoState extends State<TelaAchado> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Achado"),
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
                            const Text("OBJETO ACHADO"),
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
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  /* Application.navigate(context, const TelaAchadosePerdidos()); */
                },
                child: const SizedBox(
                  height: kToolbarHeight,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'É MEU',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
