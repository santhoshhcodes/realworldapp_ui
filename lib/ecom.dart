import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';



class Ecom extends StatefulWidget {
  const Ecom({super.key});



  @override
  State<Ecom> createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  final PageController pageviewdot = PageController();
  int _currentindex = 0 ;

  List a = [1,2,3,4];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.green[200],
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search or ask a question",
                border: OutlineInputBorder(),
                suffixIcon: SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.camera ),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 4.0),
                         child: Icon(Icons.mic),
                       ),

                    ],
                  ),
                ),
              ),

            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Icon(Icons.qr_code),
            )
          ],
        ),
      ),
      body: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 45,
                  width: double.infinity,
                  color: Colors.green[100],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("Deliver to Santhosh - Tirupur 641604"),
                        ),
            
                      ],
                    ),
            
                  ),
            
                ),
                CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 220,
                      // aspectRatio: 16/9,
                      viewportFraction: 1.0,
                      // initialPage: 0,
                      // enableInfiniteScroll: true,
                      // reverse: false,
                      autoPlay: true,
                      // autoPlayInterval: Duration(seconds: 3),
                      // autoPlayAnimationDuration: Duration(milliseconds: 800),
                      // autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index,reason){
                        setState(() {
                          _currentindex = index;
                        }
                        );
                      },

                    ),

                    itemCount: a.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                      return Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/ecom/amazon.png"),
                            fit: BoxFit.fill,

                          ),

                        ),



                      );

                    }


                ),
                Center(
                  child: DotsIndicator(dotsCount: a.length,
                    position: _currentindex.toDouble(),
                  ),
                ),
            
            
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder:(BuildContext,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 350,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/ecom/amazon.png"),
                              fit: BoxFit.fill
                            ),

                            borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                      );


                    }


                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Deal for You",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Column()
                    ],
                  ),
                ),

                SizedBox(
                  height: 400,
                  child: GridView.builder
                    (
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2
                      ),



                      itemCount: lis.length,
                      itemBuilder: (BuildContext,index)
                      {
                        return  Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 180,
                                     decoration:BoxDecoration(
                                       image: DecorationImage(image: AssetImage(lis[index].image),
                                       fit: BoxFit.fill)
                                     ),


                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        // ElevatedButton(onPressed: (){}, child: Text("55% off",style: TextStyle(color: Colors.white70),)),
                                        Text(lis[index].text,style: TextStyle(color: Colors.red,fontSize: 12),),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 6.0),
                                          child: ElevatedButton(onPressed: (){}, child: Text("55% off",style: TextStyle(fontSize: 10,color: Colors.white),),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 0.1,
                                                  vertical: 0.1,
                                                ),
                                                shape:RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(25)
                                                )


                                            ),),
                                        )
                                      ],
                                    ),
                                  ],
                                ),

                                
                              ),

                            ],
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
          )),
    );
  }
}



class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}


List lis = listt.map((e)=>Model(e["image"], e["text"])).toList();

var listt = [
  {"image":"assets/back.png","text":"hello"},
  {"image":"assets/dark.png","text":"hi"},
  {"image":"assets/back.png","text":"hello"},
  {"image":"assets/back.png","text":"hello"},

];
