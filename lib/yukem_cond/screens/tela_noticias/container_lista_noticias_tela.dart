import 'package:flutter/material.dart';

class ContainerListaNoticiasTela extends StatefulWidget {
  const ContainerListaNoticiasTela(
      {Key? key,
      required this.notica,
      required this.url,
      required this.titulo,
      required this.qtdlikes,
      required this.qtdcomentarios,
      required this.comentarios})
      : super(key: key);

  final Function notica;
  final String url;
  final String titulo;
  final String qtdlikes;
  final String qtdcomentarios;
  final Function comentarios;

  @override
  State<ContainerListaNoticiasTela> createState() =>
      _ContainerListaNoticiasTelaState();
}

class _ContainerListaNoticiasTelaState
    extends State<ContainerListaNoticiasTela> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: InkWell(
        onTap: () => widget.notica(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Image.network(widget.url),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      widget.titulo,
                      style: const TextStyle(
                          fontSize: 23, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.favorite_border),
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                              Text(
                                widget.qtdlikes,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.chat),
                                iconSize: 30.0,
                                onPressed: () => widget.comentarios(),
                              ),
                              Text(
                                widget.qtdcomentarios,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
