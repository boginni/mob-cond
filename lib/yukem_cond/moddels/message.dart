class Message {
  final String userName;
  final String titulo;
  final String content;

  Message(this.userName, this.titulo, this.content);

  static Future<List<Message>> getList() async {
    await Future.delayed(const Duration(milliseconds: 250));
    return [
      Message('boginni', 'Teste', 'Conteudo'),
      Message('andersson', 'Fazer Novidades', ''),
      Message('alessandro', 'Comprar Cirgarro', ''),
      Message('antonio', 'Texto muito grande', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis dictum neque. Donec felis ipsum, vulputate in elementum finibus, malesuada ac nisl. Nam dictum convallis dui, vitae posuere odio. Aliquam dui nulla, lobortis et imperdiet eu, venenatis at enim. Nulla facilisi. Aliquam placerat, augue vitae consectetur pretium, libero lorem consectetur sem, ac malesuada leo nulla at velit. Quisque est diam, facilisis efficitur sem ut, dapibus suscipit ligula. Fusce ullamcorper nibh velit, at consectetur purus ornare sit amet. Integer odio augue, imperdiet eu ante nec, tincidunt porta massa. Vestibulum in dolor in elit lobortis mollis.'),

    ];
  }
}
