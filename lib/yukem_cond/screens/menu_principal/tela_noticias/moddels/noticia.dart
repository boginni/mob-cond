class Noticia {
  final String titulo;
  final String conteudo;
  final String imageUrl;

  final int qtdLikes;
  final int qtdComentarios;

  Noticia(
      {required this.titulo,
      required this.conteudo,
      required this.imageUrl,
      this.qtdLikes = 0,
      this.qtdComentarios = 0});

  static Future<List<Noticia>> getList() async {
    return [
      Noticia(
          titulo: 'Imagens não são salvas no dispositivo!',
          conteudo:
              'precisamos que as imagens sejam salvas temporariamente no dispositivo para evitar consumo exessivo de dados',
          imageUrl:
              'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
          qtdLikes: 12,
          qtdComentarios: 1),
      Noticia(
          titulo: 'Revisão da Tela de Noticias',
          conteudo:
              'revisão e padronização da tela de notícias para deixar pronto para integração',
          imageUrl: 'https://cdn-icons-png.flaticon.com/512/3898/3898134.png',
          qtdLikes: 8,
          qtdComentarios: 5),
      Noticia(
          titulo: 'Commit da tela de notícias',
          conteudo: 'Tela construida em apenas o front',
          imageUrl:
              'https://icon-library.com/images/commit-icon/commit-icon-29.jpg',
          qtdLikes: 150,
          qtdComentarios: 68),
      Noticia(
          titulo: 'Yukem Cond está em desenvolvimento',
          conteudo:
              'Após uma reunião para avaliar a proposta, confirmou-se o desenvolvimnto do aplicativo',
          imageUrl: 'https://picsum.photos/250?image=9',
          qtdLikes: 3,
          qtdComentarios: 0),
    ];
  }
}
