import 'package:flutter/material.dart';
import 'package:projesina/CafeSection/cafe_details.dart';
import 'package:projesina/CafeSection/cafe_main_imagemodule.dart';
import 'package:projesina/CafeSection/cafe_model.dart';

enum CafeMenuPages{home,heart,shop,notification}


class CafeMainmenu extends StatefulWidget {
  @override
  State<CafeMainmenu> createState() => _CafeMainmenuState();
}

class _CafeMainmenuState extends State<CafeMainmenu> {
  @override
  final List<String> categories = [
    'All Coffee', 'Machiatto', 'Latte', 'Americano'
  ];

  bool isSelected = false;

  int selectedIndex = 0;
  List<CafeModel> cafemainmodule = CafeMainImagemodule().getdata();

  Widget build(BuildContext context) {
    
    return DefaultTabController(
        length: CafeMenuPages.values.length,
            child:  Scaffold(
                bottomNavigationBar: TabBar(
                  padding: EdgeInsets.only(left: 40,right: 40),
                  labelColor: Colors.red,
                  labelPadding: EdgeInsets.only(top: 10,bottom: 35),
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 5.0, color: Colors.red), 
                           
                    ),
                  indicatorPadding: EdgeInsets.only(bottom: 40,left: 8,right: 8),
                  tabs: [
                    Tab(icon: Icon(Icons.home,size: 30,),),
                    Tab(icon: Icon(Icons.heart_broken,size: 30,),),
                    Tab(icon: Icon(Icons.shopping_bag,size: 30,),),
                    Tab(icon: Icon(Icons.notifications_rounded,size: 30,),)
                  ]
                ),
                body:
                      SingleChildScrollView(
                        child: SafeArea(
                          child:
                          Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                decoration: BoxDecoration(
                                  // gradient: LinearGradient(
                                  //   colors: [
                                      
                                  //     Colors.black87
                                      
                                  //   ]),
                                    color: Colors.black87
                                  
                                ),
                                height: 280,
                                width: MediaQuery.sizeOf(context).width,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 40),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Location",style: TextStyle(color: Colors.white30,fontSize: 17),),
                                       SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text("Bilzen, Tanjungbalai",style: TextStyle(color: Colors.white,fontSize: 20),),
                                          SizedBox(width: 10),
                                          Icon(Icons.arrow_downward,color: Colors.white30,size: 25,)
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 15),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                style: TextStyle(color: Colors.white),
                                                decoration: InputDecoration(
                                                labelText: "Search coffee",
                                                labelStyle: TextStyle(color: const Color.fromARGB(226, 200, 192, 192),fontSize: 19),
                                                prefixIcon: Icon(Icons.search,color: Colors.white,),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                  borderSide: BorderSide(color: Colors.black12),
                                                ),
                                              ),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            FilledButton(
                                              onPressed:
                                               (){
                                                      
                                               },
                                               style: FilledButton.styleFrom(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
                                                backgroundColor: Color(0xFF947257),
                                                minimumSize: Size(10, 50)
                                               ),
                                                child: Icon(Icons.display_settings_sharp,size: 25,))
                                          ],
                                        ),
                                      )
                                      
                                    ],
                                  ),
                                ),
                              ),
                                            
                            Positioned(
                              top: 200,
                              left: 20,
                              child: Container(
                                height: 210,
                                width: 367,
                                decoration: BoxDecoration(
                                
                                ),
                                child:
                                   Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.asset('assets/images/coffe.png',
                                        height: 160,
                                        width: 367,
                                        fit: BoxFit.cover,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 30),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(6),
                                                color: Colors.red
                                                
                                              ),
                                              child: 
                                              Align(
                                                alignment: Alignment.center,
                                                child: Text("Promo",style: TextStyle(
                                                  color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                                                ),),
                                              ),
                                            ),
                                            SizedBox(height: 25),
                                            Container(
                                              width: 250,
                                              child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                  clipBehavior: Clip.none, 
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 215,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black.withOpacity(0.80),
                                                        borderRadius: BorderRadius.circular(6),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: -19, 
                                                      left: 5,
                                                      child: Text(
                                                        "Buy one get",
                                                        style: TextStyle(
                                                          fontSize: 37,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                  SizedBox(height: 15),
                                                   Stack(
                                                  clipBehavior: Clip.none, 
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 165,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black.withOpacity(0.80),
                                                        borderRadius: BorderRadius.circular(6),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: -19, 
                                                      left: 5,
                                                      child: Text(
                                                        "one FREE",
                                                        style: TextStyle(
                                                          fontSize: 37,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                           
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                   )
                                
                               ),
                            ),
                           
                                ],
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 100,right: 20),
                                  child: Column(
                                    children: [
                                      Container(
                                              height: 40,
                                              child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                itemCount: categories.length,
                                                padding: EdgeInsets.symmetric(horizontal: 16),
                                                itemBuilder: (context, index) {
                                                  final isActive = index == selectedIndex;
                                                  return GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedIndex = index;
                                                      });
                                                    },
                                                    child: Container(
                                                      margin: EdgeInsets.only(right: 12),
                                                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                                      decoration: BoxDecoration(
                                                        color: isActive ? Color(0xFF947257) : Colors.grey[200],
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          categories[index],
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: isActive ? Colors.white : Colors.black ,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          
                                            Padding(
                                              padding: const EdgeInsets.only(left: 25,right: 10,top: 20),
                                              child: GridView.builder(
                                                shrinkWrap: true,
                                                physics: NeverScrollableScrollPhysics(),
                                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing: 13,
                                                  crossAxisSpacing: 23,
                                                  childAspectRatio: 0.63
                                                  ),
                                                itemCount: 4,
                                                 itemBuilder: (context,index){
                                                  final coffe = cafemainmodule[index];
                                                  return GestureDetector(
                                                    onTap: () {
                                                      
                                                    },
                                                    child: 
                                                    Column(
                                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          height: 255,
                                                     
                                                          decoration: BoxDecoration(
                                                            color: Colors.white30,
                                                            borderRadius: BorderRadius.circular(20),
                                                            boxShadow: [
                                                            
                                                           BoxShadow(
                                                        color: const Color.fromARGB(77, 56, 56, 56).withOpacity(0.1), // 🔥 Hafif gri gölge
                                                        blurRadius: 8,
                                                        spreadRadius: 1,
                                                        offset: Offset(0, 4),
                                                      ),
                                                          ],
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 10,right: 5,top: 10),
                                                            child: Column(
                                                             crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Image.asset(coffe.coffeeurl,
                                                                width: 150,height: 135,fit: BoxFit.cover,),
                                                                 SizedBox(height: 10),
                                                                Text(coffe.coffename,style: TextStyle(
                                                                color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
                                                              ),),
                                                             
                                                                Text(coffe.desc,style: TextStyle(
                                                                color: Colors.black.withOpacity(0.55),fontSize: 17,fontWeight: FontWeight.bold,height: 1
                                                              ),),
                                                               SizedBox(height: 7),
                                                                 Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                   children: [
                                                                     Text("\$${coffe.price}",style: TextStyle(
                                                                      color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
                                                                                                                                 ),),
                                                                     Container(
                                                                      width: 36,
                                                                      height: 36,
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadiusGeometry.circular(10),
                                                                        color: Color(0xFF947257)
                                                                      ),
                                                                      child: GestureDetector(
                                                                        onTap: (){
                                                                         Navigator.push(context, MaterialPageRoute(builder: (context) => CafeDetails()));
                                                                        },

                                                                        child: Icon(Icons.add,size: 20,color: Colors.white,),
                                                                           ),
                                                                     )
                                                                   ],
                                                                 )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                                      
                                                 }
                                                 ),
                                            )
                                    ],
                                  ),
                                )
                            ],
                          ) ,
                          
                                             ),
                      ),
          
              )
    );
            }
}