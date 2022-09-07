import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/moddels/message.dart';

class TileMessage extends StatelessWidget {
  const TileMessage({Key? key, this.onTap, required this.item})
      : super(key: key);

  final void Function()? onTap;

  final Message item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 32,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.userName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          Text(
                            '11',
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                item.titulo,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                thickness: 0.2,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                item.content,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
