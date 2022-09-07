import 'package:flutter/material.dart';
import '../../../components/drawer/custom_drawer.dart';
import '../../../moddels/message.dart';

class TelaAcesso extends StatefulWidget {
  const TelaAcesso({Key? key}) : super(key: key);

  @override
  _TelaAcessoState createState() => _TelaAcessoState();
}

class _TelaAcessoState extends State<TelaAcesso> {
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
        title: const Text("Acesso"),
      ),
      drawer: CustomDrawer(changeState: setState),
      body: SingleChildScrollView(
        child: Column(
          children: [


          ],
        ),
      ),
    );
  }
}
