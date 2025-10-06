import 'package:flutter/material.dart';


import 'log_in.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  final valid =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize(
       preferredSize: Size.fromHeight(40),
       child: AppBar(
         backgroundColor: Colors.blue[900],
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(18),
             bottomRight: Radius.circular(18),
           )
         ),
         leading: Icon(Icons.arrow_back,color: Colors.white,size: 20,),
         title: Text("Menu",style: TextStyle(color: Colors.white,fontSize: 20),),
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.home,color: Colors.white,size: 20,),
           )
         ],

       ),
     ),
      body:
      Form(
        key: valid,
          child:
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.blue[900],),
                      title: Text("Attendance report",style: TextStyle(fontSize: 15,),),
                      dense: false,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //attendance
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.message_rounded,color: Colors.blue[900],),
                      title: Text("Mock Interview report"),
                      dense: true,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //mock interview
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.payment,color: Colors.blue[900],),
                      title: Text("payment report"),
                      dense: true,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //payment
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.network_cell,color: Colors.blue[900],),
                      title: Text("All student project uri"),
                      dense: true,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //All students project url
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.leave_bags_at_home_sharp,color: Colors.blue[900],),
                      title: Text(" Leave request"),
                      dense: true,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //leave
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.notification_add,color: Colors.blue[900],),
                      title: Text("Notifications"),
                      dense: true,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //notification
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.feedback,color: Colors.blue[900],),
                      title: Text("Feedback"),
                      dense: true,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //Feedback
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.people,color: Colors.blue[900],),
                      title: Text("Refer a friends"),
                      dense: true,
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ), //Refer a Friend
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const log_in()), );
                }, child: Text("Log out"))
               
                
                

                
              ],
            ),
          ),
      ),
    );
  }
}