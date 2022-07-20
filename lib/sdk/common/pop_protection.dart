import 'package:flutter/cupertino.dart';
import '../utility/page_manager.dart';

/// Usada como template para criação de novas telas que são navegaveis pelo custom drawer
class PopProtection extends StatelessWidget {
  const PopProtection({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onWillPop(context),
      child: child,
    );
  }

  Future<bool> onWillPop(BuildContext context) async {
    if (PageManager.of(context).previousPage()) {
      // return await mostrarCaixaConfirmacao(context, title: 'Deseja Sair do app?');
      return true;
    }
    return false;
  }
}
