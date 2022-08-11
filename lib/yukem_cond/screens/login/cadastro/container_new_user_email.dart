import 'package:flutter/material.dart';

class ContainerUserEmail extends StatelessWidget {
  const ContainerUserEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email_outlined,
                  size: 32,
                  color: Colors.black,
                ),
                labelText: "E-MAIL",
                hintText: "E-MAIL",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
