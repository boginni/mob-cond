// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../common/formatter/date_time_formatter.dart';
// import '../../models/configuracao/app_system.dart';
// import '../../models/database_objects/query_filter.dart';
// import '../components/checkbox.dart';
// import '../form_field/formulario.dart';
// import 'custom_buttons.dart';
// import 'custom_text.dart';
//
// class PesquisaAvancada extends StatelessWidget {
//   final Function(QueryFilter) onDynamic;
//
//   final Function(QueryFilter) onSearch;
//
//   PesquisaAvancada(
//       {Key? key,
//       required this.onDynamic,
//       required this.onSearch,
//       required this.pesquisaController,
//       required this.mapListCheckBox,
//       required this.data})
//       : super(key: key);
//
//   DateTime? data;
//
//   final TextEditingController pesquisaController;
//
//   final Map<String, List<CheckBoxItem>> mapListCheckBox;
//
//   @override
//   Widget build(BuildContext context) {
//     AppSystem appSystem = AppSystem.of(context);
//
//     getQuery() {
//       String x = pesquisaController.text;
//       bool y = isNumeric(x);
//
//       final Map<String, dynamic> map = {
//         y ? 'ID_PESSOA' : 'NOME': y ? intValue(x) : x,
//         'CRIACAO': data != null ? DateFormatter.databaseDate.format(data!) : '',
//       };
//
//       mapListCheckBox.forEach((key, value) {
//         map[key] = value;
//       });
//
//       // 'ID_ROTA': rota.id,
//
//       return QueryFilter(args: map, allowNull: true);
//     }
//
//     return Card(
//       margin: const EdgeInsets.only(bottom: 6, right: 8, left: 8),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//         child: ListViewNested(
//           children: [
//             /// Filtros
//             const SizedBox(
//               height: 16,
//             ),
//             const TextTitle('Data da visita'),
//             Row(
//               children: [
//                 Expanded(
//                   child: FormDatePicker(
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime.now().add(const Duration(days: -360)),
//                       lastDate: DateTime.now().add(const Duration(days: 360)),
//                       startingDate: data,
//                       then: (DateTime? date) {
//                         if (date != null) {
//                           data = date;
//                           if (appSystem.usarPesquisaDinamica) {
//                             onDynamic(getQuery());
//                           }
//                         }
//                       },
//                       hint: 'Data da Visita'),
//                 ),
//                 ButtonIcon(
//                   onPressed: () {
//                     data = null;
//                     if (appSystem.usarPesquisaDinamica) {
//                       onDynamic(getQuery());
//                     }
//                   },
//                   icon: CupertinoIcons.clear_circled_solid,
//                 ),
//               ],
//             ),
//
//             const TextTitle('Pesquisa'),
//             TextFormField(
//               controller: pesquisaController,
//               onChanged: (x) {
//                 if (appSystem.usarPesquisaDinamica) {
//                   onDynamic(getQuery());
//                 }
//               },
//               decoration:
//                   const InputDecoration(hintText: 'ID Visita ou Nome Pessoa'),
//             ),
//
//             ListView.builder(
//               itemCount: mapListCheckBox.length,
//               itemBuilder: (BuildContext context, int index) {
//                 String key = mapListCheckBox.keys.elementAt(index);
//                 List<CheckBoxItem> list = mapListCheckBox[key]!;
//
//                 return ExpansionTile(
//                   title: TextTitle(key),
//                   children: [
//                     ListView.builder(
//                       itemBuilder: (BuildContext context, int index) {
//                         final item = list[index];
//                         return CheckboxTile(
//                             item: item,
//                             onChange: () {
//                               if (appSystem.usarPesquisaDinamica) {
//                                 onDynamic(getQuery());
//                               }
//                             });
//                       },
//                       itemCount: list.length,
//                       shrinkWrap: true,
//                     ),
//                   ],
//                 );
//               },
//             ),
//
//             ElevatedButton(
//                 onPressed: () => onSearch(getQuery()),
//                 child: const TextNormal("Pesquisar")),
//           ],
//         ),
//       ),
//     );
//   }
// }
