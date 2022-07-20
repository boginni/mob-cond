
import 'debugger.dart';

class MapReader {
  final Map<String, dynamic> map;

  final bool printError;

  MapReader(this.map, {this.printError = false});

  value(String x) {
    final y = map[x];

    // if (y == null) {
    //   printDebug('null call for $x');
    // }

    return y;
  }

  int? intN(String x) {
    try {
      final y = int.tryParse(value(x).toString());
      return y;
    } catch (e) {
      if (printError) {
        printDebug(x);
        printDebug(e.toString());
      }
      return null;
    }
  }

  int integer(String x) {
    try {
      int i = value(x);
      return i;
    } catch (e) {
      printDebug('$x é nulo mas não deveria');
      rethrow;
    }
  }

  double? douN(String x) {
    try {
      final y = double.tryParse(value(x).toString());
      return y;
    } catch (e) {
      if (printError) {
        printDebug( x);
        printDebug( e.toString());
      }
      return null;
    }
  }

  double dou(String x) {
    return douN(x) ?? 0;
  }

  bool bo(String x) {
    final y = value(x);
    if (y == null) {
      throw Exception("$x não deveria ser nulo");
    }

    return y == 1;
  }
}
