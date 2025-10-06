import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {

  final qwe = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:qwe,
        child: Column(
          children: [
            TextFormField(
              validator: (i)
              {
                if(i == null || i.isEmpty)
                  {
                    return "pls enter valid name";
                  }
              },
            ),
            TextFormField(
              validator: (i)
              {
                if(!RegExp(r'^[0-9]').hasMatch(i!))
                {
                  return "pls enter valid name";
                }
                return null;
              },
            ),
            OutlinedButton(onPressed: (){
              if(qwe.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid data")));
                }
            }, child: Text("ok")),
          ],
        ),
      ),
    );
  }
}
