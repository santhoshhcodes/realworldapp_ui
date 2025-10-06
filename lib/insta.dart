import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';


class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Row(
          children: [
            Text("sandy.2k4",style: TextStyle(color: Colors.white),),
            Icon(Icons.arrow_drop_down,color: Colors.white,)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_box_outlined,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,color: Colors.white,),
          )
        ],
      ),
     body: Container(
       height: double.infinity,
       width: double.infinity,
       color: Colors.black,
       child: DefaultTabController(
         length: 3,
         child: NestedScrollView(
             headerSliverBuilder: (BuildContext content,bool innerBoxIsScrolled){
               return[
                 SliverAppBar(
                 floating: true,
                 pinned: true,
                 snap: true,
                 expandedHeight: 300,
                 backgroundColor: Colors.grey[800],
                 flexibleSpace: FlexibleSpaceBar(

                   background: Column(
                     children: [
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           SizedBox(width: 15,),

                           Container(
                             height: 100,
                             width: 100,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border:Border.all(),
                               image: DecorationImage(image: AssetImage("assets/insta/pro.png"),
                               fit: BoxFit.fill)
                             ),
                           ),
                           SizedBox(
                             width: 20,
                           ),
                           Column(
                             children: [
                               Text("sandy",style: TextStyle(color: Colors.white,fontSize: 15),),
                               SizedBox(height: 5,),
                               Text("4",style: TextStyle(color: Colors.white),),
                               Text("Posts",style: TextStyle(color: Colors.white),),
                             ],
                           ),
                           SizedBox(
                             width: 35,
                           ),
                           Column(
                             children: [
                               Text("   ",style: TextStyle(color: Colors.white,fontSize: 15),),
                               SizedBox(height: 5,),
                               Text("757",style: TextStyle(color: Colors.white),),
                               Text("Followers",style: TextStyle(color: Colors.white),),
                             ],
                           ),
                           SizedBox(
                             width: 30,
                           ),
                           Column(
                             children: [
                               Text("   ",style: TextStyle(color: Colors.white,fontSize: 15),),
                               SizedBox(height: 5,),
                               Text("520",style: TextStyle(color: Colors.white),),
                               Text("Following",style: TextStyle(color: Colors.white),),
                             ],
                           ),
                           
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             Text("அன்பே சிவம் ❤️‍🩹",style: TextStyle(color: Colors.white),),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Row(
                           children: [
                             Text("see transulate",style: TextStyle(color: Colors.white),),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Row(
                           children: [
                             Container(
                               height: 12,
                                 width: 12,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,

                                   border: Border.all(color: Colors.white)
                                 ),
                                 child: Center(child: Icon(Icons.play_arrow_outlined,color: Colors.white,size: 10,))
                             ),
                             SizedBox(width: 5,),
                             Row(
                               children: [
                                 Text('ullaalla ("petta")',style: TextStyle(color: Colors.white),),
                                 Text('    Aniruth Ravichandander, nakash ...',style: TextStyle(color: Colors.grey),),
                               ],
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           SizedBox(width: 10,),
                           ElevatedButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white),),
                           style: ElevatedButton.styleFrom(
                             padding: EdgeInsets.symmetric(
                               vertical: 10,
                               horizontal: 45
                             ),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10)
                             ),
                             backgroundColor: Colors.grey

                           ),
                           ),
                           SizedBox(width: 10,),
                           ElevatedButton(onPressed: (){}, child: Text("Message",style: TextStyle(color: Colors.white),),
                             style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(
                                     vertical: 10,
                                     horizontal: 45
                                 ),
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                               backgroundColor: Colors.grey
                             ),
                           ),
                           SizedBox(width: 10,),
                           ElevatedButton(onPressed: (){}, child: Icon(Icons.person_add_alt,color: Colors.white,),
                             style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(
                                     vertical: 5,
                                     horizontal:5
                                 ),
                               backgroundColor: Colors.grey
                             ),
                           ),
                         ],
                       ),


                     ],
                   ),
                 ),
                 bottom: TabBar(tabs: [
                   Tab(icon: Icon(Icons.grid_on,color: Colors.white,),),
                   Tab(icon: Icon(Icons.video_collection_outlined,color: Colors.white,),),
                   Tab(icon: Icon(Icons.person_add_alt_1,color: Colors.white,),),
                 ]),
               )
               ];
             },

             body: TabBarView(children: [
               Container(
                 height: 100,
                 child:   GridView.builder
                   (
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3
                     ),
                     itemCount: img.length,
                     itemBuilder: (BuildContext,index)
                     {
                       return Container(
                         height: 200,
                         width: 150,
                         decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage(img[index].image),
                           fit: BoxFit.fill,
                           )
                         ),
                       );
                     }
                 ),


               ),
               Container(
                 height: 100,
                 child:   GridView.builder
                   (
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3
                     ),
                     itemCount: vid.length,
                     itemBuilder: (BuildContext,index)
                     {
                       return Container(
                         height: 200,
                         width: 150,
                         decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage(vid[index].image),
                               fit: BoxFit.fill,
                             )
                         ),
                       );
                     }
                 ),


               ),
               Container(
                 height: 100,
                 child:   GridView.builder
                   (
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3
                     ),
                     itemCount: tag.length,
                     itemBuilder: (BuildContext,index)
                     {
                       return Container(
                         height: 200,
                         width: 100,
                         decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage(tag[index].image),
                               fit: BoxFit.fill,
                             )
                         ),
                       );
                     }
                 ),


               )
             ]),
         ),
       ),
     ),
    );
  }
}

class Model{
  String? image;
 

  Model(this.image,);

}

List img = post.map((e)=>Model(e["image"])).toList();

var post =[
  {"image":"assets/insta/post.png"},
  {"image":"assets/insta/pro.png"},
];

class Reels{
  String? image;


  Reels(this.image);

}

List vid = video.map((e)=>Model(e["image"])).toList();

var video =[
  {"image":"assets/insta/post.png"},
  {"image":"assets/insta/post.png"},
];

class Tag{
  String? image;


  Tag(this.image);

}

List tag = Person.map((e)=>Model(e["image"])).toList();

var Person =[
  {"image":"assets/insta/post.png"},
  {"image":"assets/insta/post.png"},
  {"image":"assets/insta/post.png"},
];