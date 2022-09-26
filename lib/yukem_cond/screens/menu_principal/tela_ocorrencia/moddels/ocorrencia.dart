class Ocorrencia {
  final String equipe;
  final String responsavel;
  final String dataPrevisaoFinalizado;
  final String posicionamento;
  final String dataAbertura;
  final String imageUrl;
  final String descricao;
  final String usuario;
  final String status;


  Ocorrencia({
    required this.descricao,
    required this.equipe,
    required this.responsavel,
    required this.dataPrevisaoFinalizado,
    required this.dataAbertura,
    required this.imageUrl,
    required this.usuario,
    required this.posicionamento,
    required this.status,

  });

  static Future<List<Ocorrencia>> getList() async {
    return [
      Ocorrencia(
        descricao: 'Arvore caida na rua colibri',
        usuario: "Alessandro",
        imageUrl:'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        dataAbertura: "25/07/2022",
        dataPrevisaoFinalizado: "20/08/2022",
        equipe: "Limpeza",
        responsavel: "Manoel Torres",
        posicionamento: "Arvore caida devido a fortes ventos",
        status: "Atrasado",
      ),
      Ocorrencia(
        descricao: 'Esta é a Descrição',
        usuario: "Antonio Carlos",
        imageUrl:'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        dataAbertura: "17/09/2022",
        dataPrevisaoFinalizado: "26/09/2022",
        equipe: "Limpeza",
        responsavel: "Juliana Soares",
        posicionamento: "Posicionamento do resposável",
        status: "Aberto",
      ),
      Ocorrencia(
        descricao: 'Esta é a Descrição',
        usuario: "Brunno",
        imageUrl:'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        dataAbertura: "03/05/2022",
        dataPrevisaoFinalizado: "30/09/2022",
        equipe: "Limpeza",
        responsavel: "Daniel Silva",
        posicionamento: "Posicionamento do resposável",
        status: "Aberto",
      ),
    ];
  }
}
