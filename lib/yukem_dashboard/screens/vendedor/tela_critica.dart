import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:yukem_dashboard/sdk/common/map_reader.dart';

import '../../custom_drawer.dart';

class TelaCritica extends StatefulWidget {
  const TelaCritica({Key? key}) : super(key: key);

  @override
  State<TelaCritica> createState() => _TelaCriticaState();
}

class _TelaCriticaState extends State<TelaCritica> {
  List<CriticaVendedor> list = [];

  Future<List<CriticaVendedor>> getCritica() async {
    return [
      CriticaVendedor(
          'xx', 'testexxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 1, 10, 100, getColor()),
      CriticaVendedor('xx', 'teste 1', 1, 9, 62, getColor()),
      CriticaVendedor('xx', 'teste 4', 1, 9, 62, getColor()),
      CriticaVendedor('xx', 'teste 5', 1, 9, 62, getColor()),
      CriticaVendedor('xx', 'teste 6', 1, 9, 62, getColor()),
      CriticaVendedor('xx', 'teste 2', 1, 9, 62, getColor()),
      CriticaVendedor('xx', 'teste 7', 1, 9, 62, getColor()),
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      getCritica().then((value) {
        setState(() {
          list = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1000;

    final children = [
      Chart(chartData: list, callback: () {}),
      ListView.builder(
        shrinkWrap: true,
        physics:  const ClampingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: Row(
                children: [
                   Icon(CupertinoIcons.cube_box, size: 64, color: item.color,),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.nomeproduto,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text('x${item.quantidade.toStringAsFixed(0)}'),
                      ],
                    ),
                  ),
                  Text(
                    item.totalfinal.toStringAsFixed(2),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crítica do vendedor'),
      ),
      drawer: CustomDrawer(
        changeState: (x) {
          setState(x);
        },
      ),
      backgroundColor: Colors.grey[350]!,
      body: ListView(
        shrinkWrap: true,
        children: [
          Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: const [
                    Text('Data',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24)),
                    Text('Vendedor: NOME')
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Builder(
            builder: (context) {
              if (largeScreenGrid) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i in children)
                      Flexible(
                        flex: 1,
                        child: i,
                      )
                  ],
                );
              } else {
                return Column(
                  children: children,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class CriticaVendedor {
  String dataEmissao;
  String nomeproduto;
  int vendas;
  double quantidade;
  double totalfinal;

  final Color? color;

  CriticaVendedor(this.dataEmissao, this.nomeproduto, this.vendas,
      this.quantidade, this.totalfinal, this.color);

  factory CriticaVendedor.fromMap(Map<String, dynamic> map) {
    MapReader r = MapReader(map);

    return CriticaVendedor(
      r.value('DATA_EMISSAO'),
      r.value('PRODUTO'),
      r.integer('VENDAS'),
      r.dou('QUANTIDADE'),
      r.dou('TOTAL_FINAL'),
      getColor()
    );
  }
}

class Chart extends StatelessWidget {
  const Chart({Key? key, required this.chartData, required this.callback})
      : super(key: key);

  final List<CriticaVendedor> chartData;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SfCircularChart(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            title: ChartTitle(text: 'Vendas'),
            series: <CircularSeries>[
              // Render pie chart
              PieSeries<CriticaVendedor, String>(

                radius: '100%',
                dataSource: chartData,
                // pointColorMapper: (CriticaVendedor data, _) => data.color,
                xValueMapper: (CriticaVendedor data, _) => data.nomeproduto,
                yValueMapper: (CriticaVendedor data, _) => data.totalfinal,
                dataLabelMapper: (CriticaVendedor data, _) => data.nomeproduto,
                pointColorMapper: (CriticaVendedor data, _) => data.color,
                dataLabelSettings: const DataLabelSettings(
                  isVisible: false,
                  // Avoid labels intersection
                  labelIntersectAction: LabelIntersectAction.shift,
                  labelPosition: ChartDataLabelPosition.outside,
                  connectorLineSettings: ConnectorLineSettings(
                      type: ConnectorType.curve, length: '25%'),
                ),
              ),
            ],
          ),
          Text('Ordenando por'),
          ElevatedButton(onPressed: () {}, child: Text('tipo de ordenando'))
        ],
      ),
    );
  }
}


// Card(
// child: Center(
// child: Padding(
// padding: const EdgeInsets.symmetric(vertical: 4),
// child: Column(
// children: [
// Text('Data',
// style: TextStyle(
// fontWeight: FontWeight.w600, fontSize: 24)),
// Text('Vendedor: NOME')
// ],
// ))),
// ),
// const SizedBox(
// height: 4,
// ),


int i = 0;
Color getColor(){
  try{
    return colors[i++];
  } catch(e){
    i = 0;
    return colors[i++];
  }
}

const colors = [
  Color(0xAA2B70A7),
  Color(0xAABF1E2E),
  Color(0xAAEF4136),
  Color(0xAAF15A2B),
  Color(0xAAE2B37D),
  Color(0xAA2A3890),
  Color(0xAA28AAE1),
  Color(0xAA77B3E1),
  Color(0xAAB5D4EF),
  Color(0xAA006838),
  Color(0xAA009445),
  Color(0xAA39B54A),
  Color(0xAA8DC73F),
  Color(0xAAD7E022),
  Color(0xAAF9ED32),
  Color(0xAAF5F194),
  Color(0xAAF2F5CD),
  Color(0xAA7B5231),
  Color(0xAA68499E),
  Color(0xAA662D91),
  Color(0xAAF20B97),
  Color(0xAAF453AD),
  Color(0xAAEE73C4),
  Color(0xAAF29EC8),
  Color(0xAAF9BBE6),
];