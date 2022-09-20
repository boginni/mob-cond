class Mercado {
  final String titulo;
  final double valor;
  final String imageUrl;
  final String descricao;
  final int telefone;

  Mercado({
    required this.titulo,
    required this.valor,
    required this.imageUrl,
    required this.descricao,
    required this.telefone,
  });

  static Future<List<Mercado>> getList() async {
    return [
      Mercado(
        titulo: 'Vendo Bicicleta',
        valor: 1.255,
        imageUrl:
            'https://cdn2.iconfinder.com/data/icons/mobile-ui-vol-2-glyph/32/mobile_interface-18-512.png',
        descricao: "Vendo bicicleta aro 20",
        telefone: 91988534512,
      ),
      Mercado(
        titulo: 'Vendo Brigadeiro',
        valor: 100,
        imageUrl: 'https://cdn-icons-png.flaticon.com/512/3898/3898134.png',
        descricao: "Vendo brigadeiro com recheio de morango",
        telefone: 91988534512,
      ),
      Mercado(
        titulo: 'Palena de Pressão',
        valor: 350,
        imageUrl:
            'https://icon-library.com/images/commit-icon/commit-icon-29.jpg',
        descricao: "Vendo Palena de pressão nova",
        telefone: 91988534512,
      ),
      Mercado(
        titulo: 'vendo cama box',
        valor: 540.90,
        imageUrl: 'https://picsum.photos/250?image=9',
        descricao: "Vendo cama box de casal",
        telefone: 91988534512,
      ),
    ];
  }
}
