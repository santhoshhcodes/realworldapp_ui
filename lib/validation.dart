import 'package:flutter/material.dart';

import 'login.dart';


class validation extends StatefulWidget {
  const validation({super.key});

  @override
  State<validation> createState() => _validationState();
}

class _validationState extends State<validation> {

  final valid = GlobalKey<FormState>();
  bool _show = false ; //for sign in button

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool _log =false; //for login button
  visible(){
    setState(() {
      if(name.text.isNotEmpty && pass.text.isNotEmpty && email.text.isNotEmpty && pass.text.isNotEmpty){
        _log = true;

      }
      else{
        _log = false;
      }
    });
  }

  bool _view = true; //for password


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Validation",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.login,color: Colors.black54,size: 25,),
          )
        ],

      ),
      body: Form(
        key: valid,
          child:
          Container(
            height: double.infinity,
            width: double.infinity,

            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/login.png"),
                  fit: BoxFit.fill,
                ),
            ),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Visibility(
                      visible: _show,
                      child: Container(
              
                        height: 450,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white.withOpacity(0.3))
                        ),
              
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: name,
                                onChanged: (i){
                                  visible();
                                },
                                validator: (value){
                                  if (value==null || value.isEmpty || value.length <3){

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
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: phone,
                                onChanged: (i){
                                  visible();
                                },
                                validator: (value){
                                  if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value!)){
                                    return"please Enter your mobileNumber";
                                  }
                                  return null;
              
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.numbers),
                                  hintText: "Enter Your MobileNumber",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: email,
                                onChanged: (i){
                                  visible();
                                },
                                validator: (value){
                                  if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)){
              
                                    return"please Enter the mail";
                                  }
                                  return null;
              
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.mail),
                                  hintText: "Enter Your mail id",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                             visible: _log,
                             child: ElevatedButton(onPressed: (){
                               if (valid.currentState!.validate())
                                 {
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text("Thank You",style: TextStyle(
                                          color: Colors.white,fontWeight: FontWeight.bold),)));
                                 }
                             }, child: Text("enter",style: TextStyle(
                                 color: Colors.green,fontWeight: FontWeight.bold),
                             )),
                           ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
              
                    setState(() {
                      _show =!_show;
                    });
              
                  },
                      child: Text("signin",style: TextStyle(color: Colors.green),))
              
                  ,
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const login()),
                        );
                      },
                      child: Container(height: 700,color: Colors.red,))
              
                ],
              
              ),
            ),


          ),






      ),


    );
  }
}
