// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// import '../../../yukem_vendas/models/database/database_ambiente.dart';
// import '../../common/debugger.dart';
// import '../database_objects/database_manager.dart';
//
// class DatabaseSystem {
//   static Future<Database> getDatabase() async {
//     const dbName = 'system';
//     final dbPath = await getDatabasesPath() + '/padrao';
//
//     if (checkDbExists(dbPath, dbName + '.db')) {
//       await copyDatabase(join(dbPath, dbName + '.db'), 'system.db');
//     }
//
//     return await openDatabase(
//       join(dbPath, '$dbName.db'),
//       version: version,
//     );
//   }
//
//   static const int version = 12;
//
//   static Future reloadDatabase() async {
//
//     final db = await DatabaseSystem.getDatabase();
//     await Future.delayed(const Duration(milliseconds: 100));
//     await db.close();
//     await Future.delayed(const Duration(milliseconds: 100));
//   }
//
//   /// Executa uma query no banco dado a tabela [table] e os parametros.
//   static Future<List<Map<String, dynamic>>> select(String table,
//       {final String? where,
//       final List<dynamic>? whereArgs,
//       final String? orderBy,
//       Function? onSucces,
//       Function? onFail}) async {
//     late final List<Map<String, dynamic>> maps;
//
//     final db = await DatabaseSystem.getDatabase();
//
//     try {
//       if (where == null || whereArgs == null) {
//         maps = await db.query(table, orderBy: orderBy);
//       } else {
//         maps = await db.query(table,
//             where: where, whereArgs: whereArgs, orderBy: orderBy);
//       }
//       if (onSucces != null) {
//         onSucces();
//       }
//     } catch (e) {
//       printDebug(e.toString());
//
//       if (onFail != null) {
//         onFail();
//       }
//     }
//
//     return maps;
//   }
//
//   static Future update(String table, Map<String, dynamic> map,
//       {ConflictAlgorithm algorithm = ConflictAlgorithm.replace,
//       final String? where,
//       final List<dynamic>? whereArgs,
//       Function? onSucces,
//       Function? onFail}) async {
//     final db = await DatabaseSystem.getDatabase();
//
//     try {
//       if (where == null || whereArgs == null) {
//         await db.update(table, map);
//       } else {
//         await db.update(table, map, where: where, whereArgs: whereArgs);
//       }
//
//       if (onSucces != null) onSucces();
//     } catch (e) {
//       printDebug(e.toString());
//
//       if (onFail != null) onFail();
//     }
//   }
//
//   static Future delete(String table,
//       {final String? where,
//       final List<dynamic>? whereArgs,
//       Function? onSucces,
//       Function? onFail}) async {
//     final db = await getDatabase();
//     try {
//       if (where == null || whereArgs == null) {
//         await db.delete(table);
//       } else {
//         await db.delete(table, where: where, whereArgs: whereArgs);
//       }
//       if (onSucces != null) {
//         onSucces();
//       }
//     } catch (e) {
//       printDebug(e.toString());
//
//       if (onFail != null) {
//         onFail();
//       }
//     }
//   }
//
//   static Future insert(String table, Map<String, dynamic> map,
//       {ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace,
//       Function? onSucces,
//       Function(dynamic e)? onFail,
//       bool printStack = true}) async {
//     final db = await getDatabase();
//
//     try {
//       await db.insert(
//         table,
//         map,
//         conflictAlgorithm: conflictAlgorithm,
//       );
//
//       if (onSucces != null) onSucces();
//     } catch (e) {
//       if (printStack) {
//         printDebug(e.toString());
//
//       }
//       if (onFail != null) onFail(e);
//     }
//   }
//
//   static Future insertAll(String table, List<Map<String, dynamic>> maps,
//       {ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace,
//       Function? onSucces,
//       Function? onFail}) async {
//     final db = await getDatabase();
//     var batch = db.batch();
//
//     try {
//
//       for (Map<String, dynamic> map in maps) {
//         batch.insert(
//           table,
//           map,
//           conflictAlgorithm: conflictAlgorithm,
//         );
//
//         // if(i++ > 100){
//         //   i = 0;
//         //   await batch.commit();
//         // }
//
//       }
//       await batch.commit();
//
//
//     } catch (e) {
//       printDebug(e.toString());
//
//       if (onFail != null) onFail();
//     }
//   }
//
//   static Future execute(String sql,
//       {final List<dynamic>? args, Function? onSucces, Function? onFail}) async {
//     final db = await getDatabase();
//     try {
//       if (args == null) {
//         await db.execute(sql);
//       } else {
//         await db.execute(sql, args);
//       }
//       if (onSucces != null) {
//         onSucces();
//       }
//     } catch (e) {
//       printDebug(e.toString());
//
//       if (onFail != null) {
//         onFail();
//       }
//     }
//   }
// }
//
// class AmbienteLocal {
//   final int id;
//   final String nome;
//
//   AmbienteLocal({required this.id, required this.nome});
// }
//
// const String tbAmbientes = 'TB_AMBIENTES';
//
// Future<List<AmbienteLocal>> selectAmbientes() async {
//   final db = await DatabaseSystem.getDatabase();
//   final List<Map<String, dynamic>> maps = await db.query(tbAmbientes);
//
//   return List.generate(maps.length, (index) {
//     return AmbienteLocal(id: maps[index]['ID'], nome: maps[index]['NOME']);
//   });
// }
//
// Future<void> insertAmbiente(
//     {required String nome, Function()? onSucess, Function()? onFail}) async {
//   final db = await DatabaseSystem.getDatabase();
//
//   try {
//     db.insert(tbAmbientes, {'NOME': nome},
//         conflictAlgorithm: ConflictAlgorithm.fail);
//
//     if (onSucess != null) {
//       DatabaseAmbiente.createAmbiente(nome);
//       onSucess();
//     }
//   } catch (e) {
//     if (onFail != null) {
//       onFail();
//     }
//   }
// }
//
// Future<void> deleteAmbiente(
//     {required String nome, Function()? onSucess, Function()? onFail}) async {
//   final db = await DatabaseSystem.getDatabase();
//
//   try {
//     db.delete(tbAmbientes, where: "NOME = ?", whereArgs: [nome]);
//     if (onSucess != null) {
//       DatabaseAmbiente.deleteAmbiente(nome);
//       onSucess();
//     }
//   } catch (e) {
//     if (onFail != null) {
//       onFail();
//     }
//   }
// }
