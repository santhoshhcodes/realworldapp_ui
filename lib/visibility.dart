import 'package:flutter/material.dart';


class visibility extends StatefulWidget {
  const visibility({super.key});

  @override
  State<visibility> createState() => _visibilityState();
}

class _visibilityState extends State<visibility> {

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool _show = false;

  visible(){
    setState(() {
      if(name.text.isNotEmpty && pass.text.isNotEmpty && email.text.isNotEmpty && pass.text.isNotEmpty){
        _show = true;

      }
      else{
        _show = false;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Visibility",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.login,color: Colors.white54,size: 25,),
          )
        ],

      ),
      body:
      Form(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/dark.png"),
            fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.white.withOpacity(0.2),),

                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 25,),
                      TextFormField(
                        controller: name,
                        onChanged: (i){
                          visible();
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.white,),
                          hintText: "Enter the Username",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.white70),


                        ),

                      ),
                      SizedBox(height: 25,),
                      TextFormField(
                        controller: phone,
                        onChanged:  (i){
                          visible();
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            icon: Icon(Icons.phone,color: Colors.white,),
                            hintText: "Enter the Mobile Number",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.white70)

                        ),
                      ),
                      SizedBox(height: 25,),
                      TextFormField(
                        controller: email,
                        onChanged: (i){
                          visible();
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            icon: Icon(Icons.mail,color: Colors.white,),
                            hintText: "Enter the Gmail",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.white70)

                        ),
                      ),
                      SizedBox(height: 25,),
                      TextFormField(
                        controller: pass,
                        onChanged: (i){
                          visible();

                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            icon: Icon(Icons.password,color: Colors.white,),
                            hintText: "Enter the Password",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.white70)

                        ),
                      ),
                      SizedBox(height: 25,),
                      Visibility(
                        visible: _show,
                        child: ElevatedButton(onPressed: (){}, child: Text("sign in",style: TextStyle(
                          color: Colors.blue,fontWeight: FontWeight.bold,
                        ),)),
                      )


                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),

    );
  }
}


// import 'package:flutter/material.dart';
//
//
// class Vis extends StatefulWidget {
//   const Vis({super.key});
//
//   @override
//   State<Vis> createState() => _VisState();
// }
//
// class _VisState extends State<Vis> {
//
//
//   TextEditingController name = TextEditingController();
//   TextEditingController pass =TextEditingController();
//
//
//    bool _show = false;
//
//    vis()
//    {
//      setState(() {
//        if(name.text.isNotEmpty && pass.text.isNotEmpty )
//        {
//          _show = true;
//        }else
//        {
//          _show = false;
//        }
//      });
//    }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//             controller: name,
//              onChanged: (i){
//             vis();
//              },
//           ),
//           TextFormField(
//             controller: pass,
//             onChanged: (i){
//             vis();
//             },
//           ),
//           Visibility(
//               visible: _show,
//               child: ElevatedButton(onPressed: (){}, child: Text("ok")))
//         ],
//       ),
//     );
//   }
// }
