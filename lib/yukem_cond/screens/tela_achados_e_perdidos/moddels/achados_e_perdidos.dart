class AchadosePerdidos {
  final bool achado;
  final String titulo;
  final String autor;
  final String imageUrl;
  final String observacao;
/*   final DateTime data; */

  AchadosePerdidos({
    /*  required this.data, */
    required this.achado,
    required this.titulo,
    required this.autor,
    required this.imageUrl,
    required this.observacao,
  });

  static Future<List<AchadosePerdidos>> getList() async {
    return [
      AchadosePerdidos(
        achado: true,
        titulo: 'Bola de basquete',
        autor: 'boginni',
        imageUrl:
            'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        observacao: 'Bola de Basquete laranja', /* data: DateTime.now()), */
      ),
      AchadosePerdidos(
        achado: false,
        titulo: 'Skate',
        autor: 'Anderson',
        imageUrl: 'https://cdn-icons-png.flaticon.com/512/3898/3898134.png',
        observacao: 'Skate na cor verde', /* data: DateTime.now()), */
      ),
      AchadosePerdidos(
        achado: false,
        titulo: 'Bicicleta',
        autor: 'Antonio',
        imageUrl: 'https://picsum.photos/250?image=9',
        observacao: 'Bicicleta vermelha', /* data: DateTime.now()), */
      ),
    ];
  }

  String getSituacao() {
    return achado ? "Achado" : "Perdido";
  }
}
