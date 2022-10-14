import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/sdk/common/formatter/date_time_formatter.dart';
import 'package:yukem_dashboard/yukem_cond/common/app/app_theme.dart';
import 'package:yukem_dashboard/yukem_cond/screens/menu_principal/tela_noticias/moddels/noticia_entity.dart';

import '../../../../app_foundation.dart';
import '../tela_view_noticia.dart';

class TileNoticia extends StatelessWidget {
  const TileNoticia({Key? key, required this.item, this.afterPressed})
      : super(key: key);

  final NoticiaEntity item;

  final void Function(dynamic x)? afterPressed;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Card(
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _IconButton(
                    Icons.favorite_border,
                    onPressed: () {
                      print('like');
                    },
                    text: item.likes.toString(),
                  ),
                  const SizedBox(width: 8.0),
                  _IconButton(
                    Icons.chat,
                    onPressed: () {
                      print('comment');
                    },
                    text: item.comentarios.toString(),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(DateFormatter.normalDataHora
                      .format(DateTime.parse(item.dataInsercao)))
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Application.navigate(
                context,
                TelaViewNoticia(
                  item: item,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 4, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          size: 48,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.titulo,
                                  style: theme.textTheme.title2()),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(item.user,
                                    style: theme.textTheme.link()),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Flexible(
                        child: Divider(),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.warning),
                          const Icon(CupertinoIcons.clock),
                          const Icon(CupertinoIcons.calendar),
                        ],
                      )
                    ],
                  ),
                  Text(
                    item.conteudo,
                    style: theme.textTheme.body(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton(this.icon, {Key? key, this.text = '', this.onPressed})
      : super(key: key);

  final IconData icon;
  final String text;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return InkWell(
      onTap: onPressed,
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 30,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: theme.textTheme.body(),
          ),
        ],
      ),
    );
  }
}
