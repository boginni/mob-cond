import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class AppUser {
  bool isValid = false;

  String ambiente = '';
  int id = 0;
  String uuid = '';

  AppUser();

  factory AppUser.of(BuildContext context) {
    return context.read<AppUser>();
  }

  factory AppUser.init(
      {required String ambiente, required int userId, required String userUuid}) {
    final app = AppUser();

    app.isValid = true;
    app.ambiente = ambiente;
    app.id = userId;
    app.uuid = userUuid;

    return app;
  }

  toBody() {
    return {'idVendedor': '$id', 'ambiente': ambiente, 'uuid': uuid};
  }

  // static AppUser getAppUser() {
  //   _appUser = AppUser.init(ambiente: 'altogiro', idUser: 1, uuid: 'x');
  //
  //   if (!_appUser.isValid) {
  //     const error = 'AppUser é inválido';
  //     throw Exception(error);
  //   }
  //   return _appUser;
  // }
  //
  // static setAppUser(AppUser app) {
  //   app.isValid = true;
  //
  //   _appUser = app;
  // }

}
