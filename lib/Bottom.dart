import 'package:flutter/material.dart';



import 'home.dart';
import 'insta.dart';

import 'ecom.dart';
import 'menu.dart';
import 'prodes.dart';
import 'playlist.dart';


class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {

  int _index =0;

  final screen = [
    home(),
    Ecom(),
    Prodes(),
    Playlist(),
    Insta(),
    menu()



  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_index],
      bottomNavigationBar:BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black,),label: "Amazon"),
          BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits,color: Colors.black,),label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music_rounded,color: Colors.black,),label: "Music"),
          BottomNavigationBarItem(icon: Icon(Icons.person_add_alt_1_rounded,color: Colors.black,),label: "Insta"),
          BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.black,),label: "Menu"),
        ],
        currentIndex: _index,
        onTap: tap,
      ) ,
    );
  }
}
