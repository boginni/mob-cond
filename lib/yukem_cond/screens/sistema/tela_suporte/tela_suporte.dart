import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/tiles/tile_message.dart';
import 'package:yukem_dashboard/yukem_cond/moddels/message.dart';

class TelaSuporte extends StatefulWidget {
  const TelaSuporte({Key? key}) : super(key: key);

  @override
  _TelaSuporteState createState() => _TelaSuporteState();
}

class _TelaSuporteState extends State<TelaSuporte> {
  List<Message> list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      final value = [
        Message('Antonio', 'Whatsapp', '91 9999-9999'),
        Message('Matheus', 'Telefone', '91 9999-9999'),
        Message('Claus', 'Whatsapp', '91 9999-9999'),
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
        title: const Text("Suporte"),
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
