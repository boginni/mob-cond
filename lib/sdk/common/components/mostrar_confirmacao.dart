import 'package:flutter/material.dart';

Future<bool> mostrarCaixaConfirmacao(BuildContext context,
    {String title = "Confirmar ação?",
    String content = '',
    bool mostrarCancelar = true}) async {
  bool result = false;

  Widget cancelButton = TextButton(
    child: const Text("Cancelar"),
    onPressed: () {
      Navigator.pop(context, false);
    },
  );
  Widget continueButton = TextButton(
    child: const Text("Continuar"),
    onPressed: () {
      Navigator.pop(context, true);
    },
  );
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: [
      if (mostrarCancelar) cancelButton,
      continueButton,
    ],
  );

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  ).then((value) {
    result = value ?? false;
  });

  return result;
}
