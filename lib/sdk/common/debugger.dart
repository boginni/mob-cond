import 'package:flutter/foundation.dart';

class Debugger {
  static const bool trace = true;
  final StackTrace _trace;

  late String fileName;
  late int lineNumber;
  late String? traceline;

  Debugger(this._trace) {
    _parseTrace();
  }

  void _parseTrace() {
    /* The trace comes with multiple lines of strings, we just want the first line, which has the information we need */
    var traceTarLine = _trace.toString().split("\n")[1];

    /* Search through the string and find the index of the file name by looking for the '.dart' regex */
    var indexOfFileName = traceTarLine.indexOf(RegExp(r'[A-Za-z]+.dart'));
    var fileInfo = traceTarLine.substring(indexOfFileName);
    var listOfInfos = fileInfo.split(":");

    traceline = (RegExp(r'\((.*?)\)').stringMatch(traceTarLine));

    /* Splitting fileInfo by the character ":" separates the file name, the line number and the column counter nicely.
      Example: main.dart:5:12
      To get the file name, we split with ":" and get the first index
      To get the line number, we would have to get the second index
      To get the column number, we would have to get the third index
    */

    fileName = listOfInfos[0];
    lineNumber = int.parse(listOfInfos[1]);
  }

  @override
  String toString() {
    if(trace){
      return '$traceline ';
    }
    return '[$fileName | $lineNumber] ';
  }
}

// @formatter:off
printDebug(Object? e) {
  if (kDebugMode) {
    print/*Isso é pra garantir que essa parte não vai ser perdida */('${Debugger(StackTrace.current)}' + e.toString());
  }
}
// @formatter:on
