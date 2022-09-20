import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/components/tiles/tile_message.dart';
import 'package:yukem_dashboard/yukem_cond/moddels/message.dart';

class TelaTrocarCond extends StatefulWidget {
  const TelaTrocarCond({Key? key}) : super(key: key);

  @override
  _TelaTrocarCondState createState() => _TelaTrocarCondState();
}

class _TelaTrocarCondState extends State<TelaTrocarCond> {
  List<Message>? list;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 1250)).then((value) {
        final value = [
          Message('Quinta do bosque', '', ''),
          Message('Quinta do lago', '', ''),
          Message('Quinta do parque', '', ''),
        ];

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
        title: const Text("Selecionar Condomínio"),
      ),
      body: list != null ?

      ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: list!.length,
        itemBuilder: (BuildContext context, int index) {
          return TileMessage(item: list![index]);
        },
      )
          :
      Center(child: CircularProgressIndicator(),)

      ,
    );
  }
}
