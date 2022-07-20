import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_dashboard/app_foundation.dart';

import '../common/structure/text_handler.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key, required this.subimit}) : super(key: key);

  final Function() subimit;

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  bool isLoading = false;
  bool verSenha = false;

  final TextEditingController controllerAmbiente = TextEditingController();
  final TextEditingController controllerUsuario = TextEditingController();
  final TextEditingController controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
        leading: InkWell(
          child: const Icon(Icons.settings),
          onTap: () {
            // TODO: IMPLEMENTAR CONFIGURAÇÕES
          },
        ),
        actions: [],
      ),
      backgroundColor: Colors.brown,
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Center(
                  child: AppText('Servidor'),
                ),
                const Center(
                  child: AppText('Server Name'),
                ),
                Focus(
                  onFocusChange: (x) {
                    if (!x) {
                      controllerAmbiente.text = controllerAmbiente.text.trim();
                    }
                  },
                  child: TextFormField(
                    controller: controllerAmbiente,
                    // enabled: !UserManager.loading,
                    decoration: const InputDecoration(
                      label: AppText('Ambiente'),
                      hintText: 'Ambiente',
                    ),
                    autocorrect: false,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Focus(
                  onFocusChange: (x) {
                    if (!x) {
                      controllerUsuario.text = controllerUsuario.text.trim();
                    }
                  },
                  child: TextFormField(
                    controller: controllerUsuario,
                    // enabled: !UserManager.loading,
                    decoration: const InputDecoration(
                      label: AppText('Usuário'),
                      hintText: 'Usuário',
                    ),
                    autocorrect: false,
                    // validator: (email) {
                    //   if (!emailValid(email!)) return 'E-mail inválido';
                    //   return null;
                    // },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        controller: controllerPass,
                        // enabled: !UserManager.loading,
                        decoration: const InputDecoration(
                          label: AppText('Senha'),
                          hintText: 'Senha',
                        ),
                        autocorrect: false,
                        obscureText: !verSenha,
                        validator: (pass) {
                          if (pass!.isEmpty || pass.length < 6) {
                            return 'Senha inválida';
                          }
                          return null;
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        child: const Icon(Icons.remove_red_eye_outlined),
                        onTap: () {
                          setState(() {
                            verSenha = !verSenha;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () => widget.subimit(),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      minimumSize: const Size.fromHeight(50)),
                  child: Builder(builder: (context) {
                    if (isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return const Text(
                      "Entrar",
                      style: TextStyle(fontSize: 18),
                    );
                  }),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Center(
                  child: AppText(Application.versao),
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  children: const [
                    Align(
                      alignment: Alignment.center,
                      child: AppText('Error Message'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
