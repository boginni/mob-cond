class Manutencao {
  final String titulo;
  final String dataultimamanutencao;
  final String dataproximamanutencao;

  Manutencao({
    required this.titulo,
    required this.dataultimamanutencao,
    required this.dataproximamanutencao,
  });

  static Future<List<Manutencao>> getList() async {
    return [
      Manutencao(
          titulo: 'Piscina',
          dataultimamanutencao: '25/07/2022',
          dataproximamanutencao: '21/09/2022'),
      /*  Manutencao(
        titulo: 'Cortar grama',
        dataultimamanutencao: '15/09/2022',
        dataproximamanutencao: '25/09/2022'
      ),
      Manutencao(
        titulo: 'Pintura',
        dataultimamanutencao: '03/10/2022',
        dataproximamanutencao: '20/10/2022'
      ), */
    ];
  }
}
