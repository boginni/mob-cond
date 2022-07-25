// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:yukem_dashboard/sdk/utility/page_manager.dart';

class DrawerTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final int page;

  final Function()? onPressed;

  const DrawerTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.page,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    final pg = PageManager.of(context);

    final int curPage = pg.page;
    final Color primaryColor = Theme.of(context).primaryColor;

    return InkWell(
      onTap: onPressed ??
          () {
            pg.setPage(page);
          },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
        child: DrawerTileStatic(
          iconData: iconData,
          selected: curPage == page,
          title: title,
        ),
      ),
    );
  }
}

// class DrawerExpansionTile extends StatelessWidget {
//   const DrawerExpansionTile({
//     Key? key,
//     required this.iconData,
//     required this.title,
//     required this.selected,
//     required this.callback,
//     required this.children,
//   }) : super(key: key);
//
//   final IconData iconData;
//   final String title;
//   final bool selected;
//   final Function(bool b) callback;
//   final List<Widget> children;
//
//
// }

class DrawerExpansionTile extends StatefulWidget {
  const DrawerExpansionTile({
    Key? key,
    required this.iconData,
    required this.title,
    required this.children,
    required this.id,
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final int id;
  final List<Widget> children;

  @override
  State<DrawerExpansionTile> createState() => _DrawerExpansionTileState();
}

final Map<int, bool> expansionCache = {};

class _DrawerExpansionTileState extends State<DrawerExpansionTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool selected = expansionCache[widget.id] ?? false;

    return ExpansionTile(
      title: DrawerTileStatic(
        selected: selected,
        iconData: widget.iconData,
        title: widget.title,
      ),
      initiallyExpanded: selected,
      tilePadding: const EdgeInsets.symmetric(horizontal: 8),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
      onExpansionChanged: (b) {
        setState(() {
          expansionCache[widget.id] = b;
        });
      },
      children: widget.children,
    );
  }
}

class DrawerTileStatic extends StatelessWidget {
  const DrawerTileStatic(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.selected})
      : super(key: key);

  final IconData iconData;
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(iconData,
              size: 32, color: selected ? primaryColor : Colors.grey[700]),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 16, color: selected ? primaryColor : Colors.grey[700]),
        )
      ],
    );
  }
}
