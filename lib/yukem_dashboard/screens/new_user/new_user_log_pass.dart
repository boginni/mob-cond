// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, unnecessary_new, unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/login/login.dart';


class NewUserLogPass extends StatefulWidget {
  const NewUserLogPass({Key? key, required Null Function() subimit}) : super(key: key);

  @override
 _NewUserLogPassState createState() => _NewUserLogPassState();
}

class _NewUserLogPassState extends State<NewUserLogPass> {
  @override
  Widget  build(BuildContext context) {
    
    return Scaffold(
     resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Center(
          
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
                    
              decoration: InputDecoration(
                icon: Icon(Icons.person_pin, size: 32, color: Colors.black,),
                labelText: "LOGIN",
                hintText: "LOGIN",
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
                icon: Icon(Icons.lock, size: 32, color: Colors.black,),
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    
              decoration: InputDecoration(
                icon: Icon(Icons.lock, size: 32, color: Colors.black,),
                labelText: "CONFIRMAR SENHA",
                hintText: "CONFIRMAR SENHA",
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
        
           
   
            SizedBox(height: 60,),       
        
            Padding(
             padding: EdgeInsets.only(left: 250),
             
                 child: SizedBox( 
            width: 90,
            height: 90,
          child: FittedBox( 
          child: FloatingActionButton( 
            backgroundColor: Colors.blue,
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login(subimit: () {},),),),
      child: Icon(
        Icons.arrow_forward,
        size: 35,
        color: Colors.white,
      ),
    ),
  ),
),
              
              
              
            
            ),
          ],
        ),
      )
      
      )
    );
  }
}