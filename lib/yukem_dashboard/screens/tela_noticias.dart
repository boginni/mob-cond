import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_dashboard/custom_drawer.dart';

class TelaNoticias extends StatefulWidget {
  const TelaNoticias({Key? key}) : super(key: key);

  @override
  State<TelaNoticias> createState() => _TelaNoticiasState();
}

class _TelaNoticiasState extends State<TelaNoticias> {
  List<Mensagem> list = [];
  late bool carregando;

  @override
  void initState() {
    super.initState();
    carregando = true;
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {


      getMensagens().then((value) {


        setState(() {
          list = value;
          carregando = false;

        });

      });



    });
  }

  Future<List<Mensagem>> getMensagens() async {
    await Future.delayed(const Duration(seconds: 2));
    return List.filled(100, Mensagem('test', 'titulo', 'Mensagem'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      drawer: CustomDrawer(
        changeState: (x) {
          setState(x);
        },
      ),
      backgroundColor: Colors.grey[400]!,
      body: carregando
          ?  Center(
              child: Card(
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 64),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  CircularProgressIndicator(),
                  Text('Carregando')
                ],)),
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (_, index) {
                return TileMensagem(
                  item: list[index],
                );
              },
            ),
    );
  }
}

class TileMensagem extends StatelessWidget {
  const TileMensagem({Key? key, required this.item}) : super(key: key);

  final Mensagem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Text(item.usuario), Text(item.titulo), Text(item.mensagem)],
      ),
    );
  }
}

class Mensagem {
  String usuario;
  String titulo;
  String mensagem;

  Mensagem(this.usuario, this.titulo, this.mensagem);
}
