class Pedidos {
  final String titulo;
  final String nomecondomino;
  final String imageUrl;
  final String observacao;
  final String data; 

  Pedidos({
    required this.data, 
    required this.titulo,
    required this.nomecondomino,
    required this.imageUrl,
    required this.observacao,
  });

  static Future<List<Pedidos>> getList() async {
    return [
      Pedidos(
        titulo: 'Bola de basquete',
        nomecondomino: 'boginni',
        imageUrl:
            'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        observacao: 'Bola de Basquete laranja', 
         data: '08/10/2022', 
      ),
      Pedidos(
        titulo: 'Skate',
        nomecondomino: 'Anderson',
        imageUrl: 'https://cdn-icons-png.flaticon.com/512/3898/3898134.png',
        observacao: 'Skate na cor verde', 
        data: '23/09/2022',
      ),
      Pedidos(
        titulo: 'Bicicleta',
        nomecondomino: 'Antonio',
        imageUrl: 'https://picsum.photos/250?image=9',
        observacao: 'Bicicleta vermelha', 
        data: '10/05/2022',
      ),
    ];
  }
}
