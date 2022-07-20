import '../../common/components/checkbox.dart';

class QueryFilter {
  Map<String, dynamic> args;

  bool allowNull;

  bool obrigatoryList;

  QueryFilter(
      {this.args = const {},
      this.allowNull = false,
      this.obrigatoryList = false,
      this.type = 'AND'
      });

  final String type;

  add(String key, dynamic value) {
    args[key] = value;
  }

  String getWhere() {
    getOrList(String key, List<dynamic> list) {
      String arg = "";
      for (final item in list) {
        String test = '';
        if (arg.isNotEmpty) {
          test += " OR ";
        }

        String value = "";
        if (item is String) {
          value = " $key LIKE ?";
        } else {
          if (item is CheckBoxItem) {
            if (item.checked) {
              value = " $key = ?";
            }
          } else {
            value = " $key = ?";
          }
        }
        if (value.isNotEmpty) {
          arg += "$test $value";
        }
      }

      return arg;
    }

    String where = '';

    args.forEach((key, value) {
      if (value != null) {
        String arg = "";

        String operand = '=';
        if (value is String) {
          operand = 'LIKE';
        }

        if (value is List) {
          final listOr = getOrList(key, value);

          if (listOr.isNotEmpty) {
            arg += " ($listOr) ";
          } else if (allowNull) {
            arg += '$key is null';
          }
        } else {
          arg += " $key $operand ?";
        }

        if (where.isNotEmpty && arg.isNotEmpty) {
          where += ' $type ';
        }

        where += arg;
      } else if (allowNull) {
        if (where.isNotEmpty) {
          where += ' $type ';
        }

        where += " $key is null";
      }
    });

    return where;
  }

  List<dynamic> getArgs() {
    List<dynamic> x = [];

    List<dynamic> getValues(List<dynamic> list) {
      List<dynamic> rtn = [];

      for (final item in list) {
        var value = item;

        if (item is String) {
          value = "%item%";
        }

        if (item is CheckBoxItem) {
          value = int.parse(item.value);
          if (item.checked) {
            rtn.add(value);
          }
        } else {
          rtn.add(value);
        }
      }

      return rtn;
    }

    args.forEach((key, value) {
      if (value != null) {
        // || allowNull

        if (value is String) {
          value = "%$value%";
        }

        if (value is List) {
          x += getValues(value);
        } else {
          x.add(value);
        }
      } else if (allowNull) {
        // x.add(value);
      }
    });

    // printDebug(x.toString());

    return x;
  }
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  try {
    return int.tryParse(s) != null;
  } catch (e) {
    return false;
  }
}

// dynamic addUnknowType(dynamic value){
//
//   if(isNumeric(value)){
//     return value as int;
//   }
//
//   return value as String;
//
// }

int? intValue(String? s) {
  if (s == null) {
    return null;
  }
  try {
    return int.parse(s);
  } catch (e) {
    return null;
  }
}
