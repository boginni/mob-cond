import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_noticias/moddels/noticia_entity.dart';

class TelaNewNoticia extends StatefulWidget {
  const TelaNewNoticia({Key? key}) : super(key: key);

  @override
  State<TelaNewNoticia> createState() => _TelaNewNoticiaState();
}

class _TelaNewNoticiaState extends State<TelaNewNoticia> {
  final _formKey = GlobalKey<FormState>();

  late final NoticiaEntity noticiaEntity;

  @override
  void initState() {
    noticiaEntity = NoticiaEntity.zero();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Nova Notícia"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Título'),
                TextFormField(
                  onSaved: (x) {
                    noticiaEntity.titulo = x ?? '';
                  },
                ),
                Text('Conteudo'),
                TextFormField(
                  onSaved: (x) {
                    noticiaEntity.conteudo = x ?? '';
                  },
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          _formKey.currentState!.save();
          noticiaEntity.save(context).then((value){
            Navigator.of(context).pop(true);
          });
        },
        child: const Text('Salvar'),
      ),
    );
  }
}
