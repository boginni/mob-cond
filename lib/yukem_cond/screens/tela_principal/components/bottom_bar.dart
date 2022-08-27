import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CupertinoTabBar(
        height: 70,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: FlatButton(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                shape: const CircleBorder(
                  side: BorderSide.none,
                ),
                onPressed: () {
                  /* Navigator.push(
                          context, MaterialPageRoute(builder: (_) => My())); */
                },
                child: Column(
                  children: const <Widget>[
                    Icon(
                      Icons.business,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Text(
                      "Trocar",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: FlatButton(
                shape: const CircleBorder(
                  side: BorderSide.none,
                ),
                onPressed: () {
                  /* Navigator.push(
                          context, MaterialPageRoute(builder: (_) => My())); */
                },
                child: Column(
                  children: const <Widget>[
                    Icon(
                      Icons.help_outline,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Text(
                      "Ajuda",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: FlatButton(
                shape: const CircleBorder(
                  side: BorderSide.none,
                ),
                onPressed: () {
                  /* Navigator.push(
                          context, MaterialPageRoute(builder: (_) => My())); */
                },
                child: Column(
                  children: const <Widget>[
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Text(
                      "Config",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: FlatButton(
                shape: const CircleBorder(
                  side: BorderSide.none,
                ),
                onPressed: () {
                  /* Navigator.push(
                          context, MaterialPageRoute(builder: (_) => My())); */
                },
                child: Column(
                  children: const <Widget>[
                    Icon(
                      Icons.exit_to_app,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Text(
                      "Sair",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
