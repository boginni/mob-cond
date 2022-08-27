import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/app_foundation.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_noticias/moddels/noticia.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_noticias/tela_view_noticia.dart';

class TileNoticia extends StatelessWidget {
  const TileNoticia({Key? key, required this.item}) : super(key: key);

  final Noticia item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: InkWell(
        onTap: () => Application.navigate(context, TelaViewNoticia(item: item,)),
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
              Image.network(item.imageUrl),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      item.titulo,
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
                                item.qtdLikes.toString(),
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
                                onPressed: (){},
                              ),
                              Text(
                                item.qtdComentarios.toString(),
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

