import 'package:flutter/material.dart';


class CheckBoxItem {
  CheckBoxItem({required this.texto, this.checked = false, this.value});

  String texto;
  bool checked;
  dynamic value;

  Map<String, dynamic> toMap() {
    return {'Texto': texto, 'checked': checked, 'value': value};
  }
}

class CheckboxTile extends StatefulWidget {
  final Function()? onChange;

  const CheckboxTile({Key? key, required this.item, this.onChange})
      : super(key: key);

  final CheckBoxItem item;

  @override
  _CheckboxTileState createState() => _CheckboxTileState();
}

class _CheckboxTileState extends State<CheckboxTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.texto),
      value: widget.item.checked,
      onChanged: (value) {
        if (value != null) {
          setState(() {
            widget.item.checked = value;
          });

          if (widget.onChange != null) {
            widget.onChange!();
          }
        }
      },
    );
  }
}

// Future<List<CheckBoxItem>> checkBoxFrom(
//     {required String tableName,
//     String tableField = 'NOME',
//     String tableValue = 'ID',
//     bool defaultChecked = false}) async {
//   List<Map<String, dynamic>> maps = await DatabaseAmbiente.select(tableName);
//
//   List<CheckBoxItem> rtn = [];
//
//   for (final item in maps) {
//     rtn.add(CheckBoxItem(
//         texto: item[tableField],
//         value: item[tableValue].toString(),
//         checked: defaultChecked));
//   }
//
//   return rtn;
// }
//
// List<CheckBoxItem> getCheckBoxList(List<String> list) {
//   List<CheckBoxItem> rtn = [];
//
//   for (final item in list) {
//     rtn.add(CheckBoxItem(texto: item));
//   }
//
//   return rtn;
// }
