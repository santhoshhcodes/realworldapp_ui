import 'dart:ui';

import 'package:flutter/material.dart';


import 'Bottom.dart';
import '../login.dart';

class log_in extends StatefulWidget {
  const log_in({super.key});





  @override
  State<log_in> createState() => _log_inState();


}

class _log_inState extends State<log_in> {
  final valid = GlobalKey<FormState>();



  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool _enter  = false;   //  for A LOGIN

  visible(){
    setState(() {
      if(name.text.isNotEmpty && pass.text.isNotEmpty){
        _enter= true;

      }
      else{
        _enter = false;
      }
    });
  }
  bool _view = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(50),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              )
          ),
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
      ),
      body:Form(
        key: valid,
        child: Stack(
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
                    width: 320,
                    height: 380,
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
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TextFormField(
                            controller: name,
                            onChanged: (i){
                              visible();
                            },
                            validator: (value){
                              if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value!)){

                                return"please Enter the name";
                              }
                              return null;

                            },
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: "Enter Your Name",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TextFormField(
                            obscureText: _view,
                            controller: pass,
                            onChanged: (i){
                              visible();
                            },
                            validator: (value){

                              if (value==null || value.isEmpty){

                                return"Please enter the password";
                              }
                              if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value!)){

                                return"Password must should be 8+ characters and include letters, numbers, and a specail character.";

                              }

                            },
                            decoration: InputDecoration(
                                icon: Icon(Icons.password),
                                hintText: "Enter Your Password",
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    _view = !_view;
                                  });
                                }, icon: Icon(_view ?
                                Icons.visibility_off : Icons.visibility))
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Visibility(
                          visible: _enter,
                          child: ElevatedButton(onPressed: (){

                            if (valid.currentState!.validate())
                            {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text("Thank You",style: TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold),)));
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const Bottom()),
                              );

                            }
                            return null;


                          }, child: Text("login")),
                        ),





                        SizedBox(height: 28,),
                        Text("forget the password?",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),


    );
  }
}
