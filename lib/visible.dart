import 'package:flutter/material.dart';

class visible extends StatefulWidget {
  const visible({super.key});

  @override
  State<visible> createState() => _visibleState();
}

class _visibleState extends State<visible> {

  bool _showContainer =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Visibility",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.login,color: Colors.black54,size: 25,),
          )
        ],

      ),
      body: Column(
        children: [

          SizedBox(height: 25,),
          Center(
            child: Visibility(
              visible: _showContainer,
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),

              ),
            ),
            
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              _showContainer = !_showContainer;
            });
          }, child: Text("open"))
        ],

      ),

    );
  }
}
