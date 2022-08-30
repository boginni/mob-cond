class Votacao {
  final bool aberto;
  final String titulo;
  final String autor;

  final String? abertura;
  final String? encerramento;

  final int totalVotos;

  Votacao(
      {required this.aberto,
      required this.titulo,
      required this.autor,
      this.abertura,
      this.encerramento,
      this.totalVotos = 0});

  static Future<List<Votacao>> getList() async {
    return [
      Votacao(aberto: true, titulo: 'Escolha para síndico', autor: 'boginni'),
      Votacao(
          aberto: false,
          titulo: 'Novo Aplicativo',
          autor: 'Andersson',
          abertura: '10/08/2022',
          encerramento: '27/08/2022',
          totalVotos: 559),
      Votacao(
          aberto: false,
          titulo: 'Nova Quadra de basquete',
          autor: 'Antonio',
          abertura: '05/03/2022',
          encerramento: '68/40/2021',
          totalVotos: 4874)
    ];
  }

  String getStatus() {
    return aberto ? "Aberto" : "Fechado";
  }
}
