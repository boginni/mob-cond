import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:path/path.dart';

import '../../common/debugger.dart';

Future<List<Map<String, dynamic>>> getDatabaseCreationQueries(
    String nome) async {
  final file = await rootBundle.loadString("assets/$nome.json");
  final Map<String, dynamic> json = jsonDecode(file);

  final database = json['objects'] as List<dynamic>;

  final List<Map<String, dynamic>> objects = List.generate(
    database.length,
    (i) {
      return database[i] as Map<String, dynamic>;
    },
  );

  return objects;
}

bool checkDbExists(String databasePath, String dbName) {
  final String path = join(databasePath, dbName);
  final File file = File(path);
  return !file.existsSync();
}

Future<void> copyDatabase(String path, String dbName) async {
  final File file = File(path);

  if (!file.existsSync()) {
    final bug = join('assets', dbName);
    final ByteData data = await rootBundle.load(bug);

    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    file.createSync(recursive: true);
    file.writeAsBytesSync(bytes);

    printDebug('database successfully copied to $path');
  } else {
    printDebug('database already exist');
  }
}
