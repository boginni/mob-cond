// // ignore_for_file: unused_import
//
// import 'package:flutter/cupertino.dart';
//
// import '../../common/debugger.dart';
//
// class SystemConfig {
//   final int id;
//   final String nome;
//   final String? descricao;
//   String valor;
//   int tipo;
//
//   final double? min, max;
//
//   SystemConfig({
//     required this.id,
//     required this.nome,
//     required this.descricao,
//     required this.valor,
//     required this.tipo,
//     this.min,
//     this.max,
//   });
//
//   factory SystemConfig.fromMap(Map<String, dynamic> map) {
//     double? getDouble(String x) {
//       try {
//         return double.tryParse(map[x].toString());
//       } catch (e) {
//         printDebug(e.toString());
//       }
//       return null;
//     }
//
//     return SystemConfig(
//       id: map['ID'],
//       nome: map['NOME'],
//       descricao: map['DESCRICAO'],
//       valor: map['VALOR'],
//       tipo: map['TIPO'],
//       min: getDouble('VALOR_MINIMO'),
//       max: getDouble('VALOR_MAXIMO'),
//     );
//   }
//
//   updateConfig() async {
//     await DatabaseSystem.update('CONF_SYSTEM', {'VALOR': valor},
//         where: 'ID = ?', whereArgs: [id]);
//   }
// }
//
// Future<List<SystemConfig>> getSystemConfigList() async {
//   List<Map<String, dynamic>> maps = await DatabaseSystem.select('CONF_SYSTEM',
//       where: 'PERMITE_ALTERAR = ?', whereArgs: [1]);
//
//   final list = List.generate(maps.length, (i) {
//     final item = maps[i];
//
//     return SystemConfig.fromMap(item);
//   });
//
//   return list;
// }
//
// Future<SystemConfig> getSystemConfig(int id) async {
//   List<Map<String, dynamic>> maps = await DatabaseSystem.select('CONF_SYSTEM',
//       where: 'ID = ?', whereArgs: [id]);
//
//   return SystemConfig.fromMap(maps[0]);
// }
