import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';


class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NestedScrollView(
          headerSliverBuilder: (BuildContext content,bool innerBoxIsScrolled){
            return [
              SliverAppBar(
                automaticallyImplyLeading: true,
                floating: false,
                pinned: true,
                snap: false,
                expandedHeight: 300,
                title: Icon(Icons.arrow_back,color: Colors.white,),
                backgroundColor: Colors.grey[850],
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle:true,
                  title: Text("vedan songs",style: TextStyle(color: Colors.white),),
                  background: Column(children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 215,
                        width: 200,
                        decoration: BoxDecoration(

                          image: DecorationImage(image: AssetImage("assets/spotify/play.png"),
                          fit: BoxFit.fill)
                        ),
                      ),
                    )
                  ],),
                ),


              ),


            ];
          },
          body: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:Colors.black,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Icon(Icons.add_circle_outline,color: Colors.grey,),
                    SizedBox(width: 25,),
                    Icon(Icons.download_for_offline_outlined,color: Colors.grey,),
                    SizedBox(width: 25,),
                    Icon(Icons.more_vert,color: Colors.grey,),
                    SizedBox(width: 160,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.play_arrow),
                    )


                  ],
                ),

              ),
              Expanded(child:
              Container(
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: song.length,

                      itemBuilder: (BuildContext,index){
                        return Card(
                          color: Colors.black,
                          child: ListTile(
                            leading: Container(
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(song[index].image,),
                                fit: BoxFit.fill,)
                            ),

                            ),
                            title: Text(song[index].text,style: TextStyle(color: Colors.white),),
                            subtitle: Text(song[index].text,style: TextStyle(fontSize: 12,color: Colors.white70),),
                            trailing: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.more_vert),
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ))


            ],

          )),
    );
  }
}

class Play{
  String? image;
  String? text;

  Play(this.image,this.text);
}

List song = mus.map((e)=>Play(e["image"],e["text"])).toList();

var mus =[
  {"image":"assets/spotify/vedan.png","text":"Social Criminal"},
  {"image":"assets/spotify/play1.png","text":"Kuthanthram"},
  {"image":"assets/spotify/play2.png","text":"Voice of Voiceless"},
  {"image":"assets/spotify/play.png","text":'Vaada Veda(From "Narivetta")'},
  {"image":"assets/spotify/vedan.png","text":"Social Criminal"},
  {"image":"assets/spotify/play1.png","text":"Kuthanthram"},
  {"image":"assets/spotify/play2.png","text":"Voice of Voiceless"},
  {"image":"assets/spotify/play.png","text":'Vaada Veda(From "Narivetta")'},
  {"image":"assets/spotify/vedan.png","text":"Social Criminal"},
  {"image":"assets/spotify/play1.png","text":"Kuthanthram"},
  {"image":"assets/spotify/play2.png","text":"Voice of Voiceless"},
  {"image":"assets/spotify/play.png","text":'Vaada Veda(From "Narivetta")'},
];

