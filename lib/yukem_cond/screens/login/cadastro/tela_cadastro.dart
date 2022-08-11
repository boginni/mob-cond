

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'container_new_user_cadastro.dart';
import 'container_new_user_pessoa_lote.dart';
import 'container_new_user_ambiente.dart';
import 'container_new_user_email.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  
  final steps = [
    const ContainerUserAmbiente(),
    const ContainerUserEmail(),
    const ContainerUserPessoaLote(),
    const ContainerUserCadastro()
  ];

  int currentStep = 0;

  nextStep() {
    if (currentStep + 1 >= steps.length) {
      Navigator.of(context).pop();
    } else {
      setState(() {
        currentStep++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: steps[currentStep],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => nextStep(),
        child: const Icon(
          Icons.arrow_forward,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
