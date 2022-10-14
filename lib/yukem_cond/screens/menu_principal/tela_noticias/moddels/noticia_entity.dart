import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:yukem_dashboard/generated/json/base/json_field.dart';
import 'package:yukem_dashboard/generated/json/noticia_entity.g.dart';

import '../../../../common/app/app_connection.dart';

@JsonSerializable()
class NoticiaEntity {
  @JSONField(name: "_id")
  late String sId;
  late String titulo;
  late String conteudo;
  late int likes;
  late int comentarios;
  late String dataInsercao;
  late String user;

  NoticiaEntity();

  factory NoticiaEntity.fromJson(Map<String, dynamic> json) =>
      $NoticiaEntityFromJson(json);

  factory NoticiaEntity.zero() {
    final n = NoticiaEntity();
    n.sId = '';
    n.titulo = '';
    n.conteudo = '';
    n.likes = 0;
    n.comentarios = 0;
    n.dataInsercao = DateTime.now().toString();
    n.user = '';
    return n;
  }

  Map<String, dynamic> toJson() => $NoticiaEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  static Future<List<NoticiaEntity>> getData(BuildContext context) async {
    final AppConnection app = AppConnection.of(context);

    final result = await app.getResult('/noticia/list');

    final list = <NoticiaEntity>[];

    for (final item in result) {
      list.add(NoticiaEntity.fromJson(item));
    }

    return list;
  }

  Future<void> save(BuildContext context) async {
    final AppConnection app = AppConnection.of(context);

    String route = '/noticia/edit';

    if (sId == '') {
      route = '/noticia/add';
    }
    await app.serverPost(route, body: toJson());
  }
}
