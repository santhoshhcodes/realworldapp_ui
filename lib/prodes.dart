import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Prodes extends StatefulWidget {
  const Prodes({super.key});

  @override
  State<Prodes> createState() => _ProdesState();
}

class _ProdesState extends State<Prodes> {
  int _currentIndex = 0;
  String dropdownValue = list.first;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.green[200],
          leading: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Icon(Icons.arrow_back),
          ),
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
      body: Form(child:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 300,
                        viewportFraction: 1.0,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        autoPlay: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index,reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        }
        
                      ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 100,
                            // width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/ecom/prodec.png"),
                              fit: BoxFit.fill)
                            ),
                          ),
                        );
        
        
                    },
                  ),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(width: 100,),
                        DotsIndicator(dotsCount: 6,
                          position: _currentIndex.toDouble() ,
                        ),
                        SizedBox(width: 40,),
                        Icon(Icons.favorite),
                         Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: Icon(Icons.share),
                         )
        
                      ],
                    ),
                    
                  ),
                 
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("boAt Airdopes 171 In-Ear Earbuds with 6mm drivers, "
                        "Bluetooth v5.0, Up to 13 Hours Playback, Voice Assistant"),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: RichText(text:
                            TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "-55%",
                                    style: TextStyle(
                                        color: Colors.red,
                                      fontSize: 35,
        
        
                                    ),
        
        
                                  ),
                                  TextSpan(
                                      text: "   ₹",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black
                                    )
                                  ),
                                  TextSpan(
                                      text: "599",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    )
                                  ),
                                ]
        
                            )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RichText(text:
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "M.R.P: ",
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                                TextSpan(
                                    text: "₹1,299",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                        color: Colors.black
                                    )
                                ),
                              ]
        
                          )
                          ),
        
                        ],
                      ),
                      Row(
                        children: [
                          RichText(text:
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Inclusive of all taxes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
        
        
                                ),
        
                              ]
        
                          )
                          ),
        
                        ],
                      ),
                      Row(
                        children: [
                          RichText(text:
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "pay ",
                                  style: TextStyle(
                                      color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text: "₹599.00 ",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                      color: Colors.black
                                  )
                                ),
                                TextSpan(
                                    text: " ₹549.00 ",
                                    style: TextStyle(
                                      color: Colors.red
        
                                    )
                                ),
                                TextSpan(
                                  text: "on this item using Amazon Pay",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
        
                              ]
        
                          )
                          ),
        
                        ],
                      ),
                      Row(
                        children: [
                          RichText(text:
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Balance. ",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text: "Set-up & add ₹500 to avail offer. ",
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
        
        
                              ]
        
                          )
                          ),
        
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          RichText(text:
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Total: ",
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                                TextSpan(
                                    text: "₹599",
                                    style: TextStyle(
                                    fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    )
                                ),
                              ]
        
                          )
                          ),
        
                        ],
                      ),
                      Row(
                        children: [
                          RichText(text:
                          TextSpan(
                            children: <TextSpan> [
                              TextSpan(
                                text: "Prime",
                                style: TextStyle(
                                  color: Colors.blue[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                )
                              ),
                              TextSpan(
                                text: "  DELIVERY UNLOCKED",
                                style: TextStyle(
                                    color: Colors.black,
                                  fontSize: 15
                                )
                              ),
        
                            ]
                          )
                          )
                        ],
        
                      ),
                      Row(
                        children: [
                          RichText(text: TextSpan(
                            children: <TextSpan> [
                              TextSpan(
                                text: "FREE delivery",
                                style: TextStyle(

                                  color: Colors.blue
                                )
                              ),
                              TextSpan(
                                text: "  Tomorrow, 26 june.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )
                              ),
                              TextSpan(
                                text: " Order Within ",
                                style: TextStyle(
                                  color: Colors.black
                                )
                              ),
                              TextSpan(
                                text: " 8 hr 10 ",
                                style: TextStyle(color: Colors.green[700])
                              ),
                            ]
                          ))
                        ],
                      ),
                      Row(
                        children: [
                          RichText(text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "mins. ",
                                style: TextStyle(
                                  color: Colors.green[700],

                                )
                              ),
                              TextSpan(
                                text: "Details",
                                style: TextStyle(
                                  color: Colors.blue
                                )
                              )
                            ]
                          )),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          RichText(text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text:" Deliver to Santhosh - Tirupur 641 604",
                                style: TextStyle(
                                  color: Colors.blue
                                )
                              )
                            ]
                          ))
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          RichText(text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "In Stock",
                                    style: TextStyle(
                                      color: Colors.green[700],
                                      fontSize: 20

                                    )
                                ),

                              ]
                          )),
                        ],
                      ),
                      SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: SizedBox(
                         height: 50,
                         width: 300,
                         child: DropdownButton<String>(
                           value: dropdownValue,
                           isExpanded: true,
                           elevation: 16,

                          
                           onChanged: (String? value) {
                             // This is called when the user selects an item.
                             setState(() {
                               dropdownValue = value!;
                             });
                           },
                           items:
                           list.map<DropdownMenuItem<String>>((String value) {
                             return DropdownMenuItem<String>(value: value, child: Text(value));
                           }).toList(),
                       )



                       ),
                     ),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){}, child: Text("Add to Cart"),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 10
                        )
                      ),),
                       SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){}, child: Text("Buy Now"),style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 10
                        )
                      ),)

                    
                    ],
                  ),
        
        
                ],
              ),
            ),
        
          ],
        ),
      )
      ),

    );
  }
}
const List<String> list = <String>['Quantity: 1', '2', '3', '4'];


