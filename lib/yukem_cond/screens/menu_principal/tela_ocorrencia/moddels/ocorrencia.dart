class Ocorrencia {
  final String equipe;
  final String responsavel;
  final String dataprevisaofinalizado;
  final String posicionamento;
  final String dataabertura;
  final String imageurl;
  final String descricao;
  final String usuario;
  final String status;


  Ocorrencia({
    required this.descricao,
    required this.equipe,
    required this.responsavel,
    required this.dataprevisaofinalizado,
    required this.dataabertura,
    required this.imageurl,
    required this.usuario,
    required this.posicionamento,
    required this.status,

  });

  static Future<List<Ocorrencia>> getList() async {
    return [
      Ocorrencia(
        descricao: 'Arvore caida na rua colibri',
        usuario: "Alessandro",
        imageurl:'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        dataabertura: "25/07/2022",
        dataprevisaofinalizado: "20/08/2022",
        equipe: "Limpeza",
        responsavel: "Manoel Torres",
        posicionamento: "Arvore caida devido a fortes ventos",
        status: "Atrasado",
      ),
      Ocorrencia(
        descricao: 'Esta é a Descrição',
        usuario: "Antonio Carlos",
        imageurl:'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        dataabertura: "17/09/2022",
        dataprevisaofinalizado: "26/09/2022",
        equipe: "Limpeza",
        responsavel: "Juliana Soares",
        posicionamento: "Posicionamento do resposável",
        status: "Aberto",
      ),
      Ocorrencia(
        descricao: 'Esta é a Descrição',
        usuario: "Brunno",
        imageurl:'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        dataabertura: "03/05/2022",
        dataprevisaofinalizado: "30/09/2022",
        equipe: "Limpeza",
        responsavel: "Daniel Silva",
        posicionamento: "Posicionamento do resposável",
        status: "Aberto",
      ),
    ];
  }
}
