// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/new_user/new_user_environment.dart';


class Login extends StatefulWidget {
  const Login({Key? key, required Null Function() subimit}) : super(key: key);

  @override
 _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
     TextButton.icon(
  onPressed: () {},
  
    label: Text('Suporte', style: TextStyle(fontSize: 14),), 
    icon:  Icon( 
        Icons.whatsapp,
        size: 24.0,
      ),
    

),

    TextButton(
  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Enviroment(subimit: () {},),),),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      Text('Registre-se', style: TextStyle(fontSize: 14),), 
      SizedBox(
        width: 5,
      ),
      Icon( 
        Icons.arrow_right_alt_sharp,
        size: 28,
      ),
    ],
  ),
),
    
  
],
),

SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    
              decoration: InputDecoration(
                icon: Icon(Icons.business, size: 32, color: Colors.black,),
                labelText: "AMBIENTE",
                hintText: "AMBIENTE",
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    
              decoration: InputDecoration(
                icon: Icon(Icons.person_pin, size: 32, color: Colors.black,),
                labelText: "USUÁRIO",
                hintText: "USUÁRIO",
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                obscureText: true,
              decoration: InputDecoration(
                icon: new Icon(Icons.lock, size: 32, color: Colors.black,),
                labelText: "SENHA",
                hintText: "SENHA",
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
                  
                  child: Text("ACESSAR",
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
                  onPressed: () {},
                 ),
              
              ) ,
              
            
            ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              
                style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey),           
              ),
              onPressed: () {},
              child: const Text("Esqueci minha senha"),
              
              ),
          ),
        
          ],
        ),
      ))
    );
  }
}