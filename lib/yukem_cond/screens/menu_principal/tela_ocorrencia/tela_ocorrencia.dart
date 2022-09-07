import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/tiles/tile_message.dart';
import 'package:yukem_dashboard/yukem_cond/moddels/message.dart';

import '../../../components/drawer/custom_drawer.dart';

class TelaOcorrencias extends StatefulWidget {
  const TelaOcorrencias({Key? key}) : super(key: key);

  @override
  _TelaOcorrenciasState createState() => _TelaOcorrenciasState();
}

const String aberto = "Aberto";

class _TelaOcorrenciasState extends State<TelaOcorrencias> {
  List<Message> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Message.getList().then((value) {
        setState(() {
          list = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Ocorrências"),
      ),
      drawer: CustomDrawer(changeState: setState),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return TileMessage(item: list[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
