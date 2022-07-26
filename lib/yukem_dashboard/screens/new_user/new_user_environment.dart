// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/new_user/new_user_name_batch.dart';


class Enviroment extends StatefulWidget {
  const Enviroment({Key? key, required Null Function() subimit}) : super(key: key);

  @override
 _EnviromentState createState() => _EnviromentState();
}

class _EnviromentState extends State<Enviroment> {
  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [


SizedBox(height: 10,),
         
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                obscureText: true,
              decoration: InputDecoration(
                icon: new Icon(Icons.business_sharp, size: 32, color: Colors.black,),
                labelText: "INSIRA O AMBIENTE AQUI",
                hintText: "INSIRA O AMBIENTE AQUI",
                labelStyle: TextStyle(color: Colors.black, fontSize: 15,),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                  ),
                
              ),
                  ),
                ),
              ),
              
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(30),

              child: SizedBox(
                width: 500,
                height: 50,
                child: RaisedButton(
                  
                  child: Text("VALIDAR AMBIENTE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                  color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
                  onPressed: () => Navigator.push( context, MaterialPageRoute(builder: (context) => NewUser(subimit: () {},),),),
                 ),
              
              ) ,
              
            
            ),     
          ],
        ),
      ))
    );
  }
}