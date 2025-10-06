import 'dart:ui';


import 'insta.dart';

import 'ecom.dart';
import 'prodes.dart';
import 'playlist.dart';

import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("login",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.login,color: Colors.black54,size: 25,),
          )
        ],

      ),
      body:Stack(
        children: [

          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/login.png"),
              fit: BoxFit.fill,
              )
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  width: 300,
                  height: 350,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  child: Column(
                    children: [

                       Text("Login",style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "please enter the email";
                          }
                          return "null";
                        },
                            decoration: InputDecoration(
                              icon: Icon(Icons.person,color: Colors.black,size: 25,),
                              hintText: "Enter the Username",
                            ),
                          ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.password,color: Colors.black,size: 25,),
                          hintText: "Enter the Password",
                        ),
                      ),
                      SizedBox(height: 25,),
                      ElevatedButton(onPressed: (){



                      }, child: Text("login")),


                      SizedBox(height: 25,),
                      Text("forget the password?",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
