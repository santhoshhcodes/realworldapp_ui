import 'package:flutter/material.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final valid = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              )
          ),
          leading: Icon(Icons.arrow_back,color: Colors.black,size: 20,),
          title: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("HOME",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.login,color: Colors.black54,size: 20,),
            )
          ],
        
        ),
      ),
      body: Form(
        key: valid,
          child:Container(
            height: double.infinity,
            width: double.infinity,
            decoration:   BoxDecoration(
            color: Colors.green[100],
            ),
            child: Column(
              children: [
                SizedBox(height: 25,),
                Container(
                  height: 150,
                  width: 300,
                  decoration:BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/gt.png"),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 360,
                   decoration: BoxDecoration(
                     color: Colors.white70,
                     border: Border.all(),
                     borderRadius: BorderRadius.circular(10),

                   ),
                    child: Text("Our personalized Full day, one-on-one training offers a comprehensive depth of knowledge. Embrace a real-world learning experience in a software company, Devoid of traditional trainers and classrooms, "
                        "akin to a fresh recruit",style: TextStyle(color: Colors.black),),
                  ),
                ),
                SizedBox(height: 20,),

                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Container(
                          height: 80,
                          width: 150,
                          decoration:BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/datas.png"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 80,
                          width: 150,
                          decoration:BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/fullstack.png"),

                              fit: BoxFit.fill,
                            ),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Container(
                          height: 80,
                          width: 150,
                          decoration:BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/gtjava.png"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 80,
                          width: 150,
                          decoration:BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/gtmob.png"),

                              fit: BoxFit.fill,
                            ),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),

                      ],
                    ),
                  ],
                )
              ],
            ),
          ),



      ),
    );
  }
}