import 'package:flutter/material.dart';

class BodyFloatingBar extends StatelessWidget {
  final List<Widget> barChildrens;

  final Widget child;

  const BodyFloatingBar({
    Key? key,
    required this.barChildrens,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (barChildrens.length == 1) {
      barChildrens.insert(0, const Text(''));
    }
    return Stack(
      children: [
        child,
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: barChildrens,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
