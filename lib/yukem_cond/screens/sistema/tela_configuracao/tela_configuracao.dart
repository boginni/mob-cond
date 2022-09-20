import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/tiles/tile_message.dart';
import 'package:yukem_dashboard/yukem_cond/moddels/message.dart';

import '../../../components/drawer/custom_drawer.dart';

class TelaConfiguracao extends StatefulWidget {
  const TelaConfiguracao({Key? key}) : super(key: key);

  @override
  _TelaConfiguracaoState createState() => _TelaConfiguracaoState();
}

class _TelaConfiguracaoState extends State<TelaConfiguracao> {
  List<Message> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {


      final value = [
        Message('', '', ''),
        Message('', '', ''),
        Message('', '', ''),
        Message('', '', ''),
      ];

      setState(() {
        list = value;
      });


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("configurações"),
      ),
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
