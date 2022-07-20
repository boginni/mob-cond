import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomFormatters {
  // ignore: non_constant_identifier_names, constant_identifier_names
  final keyboard_numero = TextInputType.number;

  // ignore: non_constant_identifier_names
  final mask_cpf = [
    MaskTextInputFormatter(
        mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_cnpj = [
    MaskTextInputFormatter(
        mask: "##.###.###/####-##", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_ddd_celular = [
    MaskTextInputFormatter(mask: "##", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_ddd = [
    MaskTextInputFormatter(mask: "##", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_numero_celular = [
    MaskTextInputFormatter(mask: "# ####-####", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_numero_telefone = [
    MaskTextInputFormatter(mask: "# ####-####", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_data = [
    MaskTextInputFormatter(mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_numero_whatsapp = [
    MaskTextInputFormatter(
        mask: "(0##) # ####-####", filter: {"#": RegExp(r'[0-9]')})
  ];

  // ignore: non_constant_identifier_names
  final mask_cep = [
    MaskTextInputFormatter(mask: "#####-###", filter: {"#": RegExp(r'[0-9]')})
  ];

  @Deprecated('Não implementado')
  // ignore: non_constant_identifier_names
  final mask_dinheiro = [
    MaskTextInputFormatter(mask: "", filter: {"#": RegExp(r'[0-9]')})
  ];

  @Deprecated('Não implementado')
  // ignore: non_constant_identifier_names
  final mask_porcentagem = [
    MaskTextInputFormatter(mask: "#####-###", filter: {"#": RegExp(r'[0-9]')})
  ];
}
