import 'package:flutter/material.dart';
import 'package:projesina/CafeSection/cafe_main_imagemodule.dart';
import 'package:projesina/CafeSection/cafe_model.dart';
import 'package:projesina/CafeSection/cafe_purchase.dart';

class CafeDetails extends StatefulWidget{
  @override
  State<CafeDetails> createState() => _CafeDetailsState();
}

class _CafeDetailsState extends State<CafeDetails> {
  @override
    List<CafeModel> cafemainmodule = CafeMainImagemodule().getdata();

    final List<String> categories = ["S","M","L"];

    int selectedindex = 0 ;

  Widget build(BuildContext context) {
    
      return Scaffold(
        bottomNavigationBar: Container(
              height: 115,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                 boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Price",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18,fontWeight: FontWeight.bold),),
                     Text("\$ 4.58",style: TextStyle(
                     color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                   ],
                 ),
                 FilledButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CafePurchase()));
                  }, 
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    minimumSize: Size(217, 56),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  
                    )
                  ),
                  child: Text("Buy now",style: TextStyle(color: Colors.white,fontSize: 18),))
                ],
              ),
        ),
        body:
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:   Icon(Icons.arrow_back_ios,size: 25,),
                    ),
                  
                    Text("Details",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                    Icon(Icons.heart_broken_rounded,size: 25,)
                  ],
                ),
              ),
             Padding(
              padding: EdgeInsetsGeometry.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                height: 230,
                width: 370,
            
                child: 
                 ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/3d.png",
                      width: 400,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
              ),
              SizedBox(height: 15),
              Text("Coffe mocha",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ice/hot",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                            Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Image.asset("assets/images/deliver.png",
                              ),
                           
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                      Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                         color: Colors.black.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             Image.asset("assets/images/more.png",
                              ),
                           
                        ],
                      ),
                    ),
                     SizedBox(width: 20),
                       Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                         color: Colors.black.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Image.asset("assets/images/share.png",
                              ),
                           
                        ],
                      ),
                    ),
                         
                                     
                      ],
                    ),
                  )
                ],
                
              ),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,size: 30,),
                  Text("4.8",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("(230)",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                child: SizedBox(
                  width: 350,
                  child: Divider(thickness: 1,color: Colors.black.withOpacity(0.2),)),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Description",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15),
                    Text.rich(
                      TextSpan(
                        children: [
                        TextSpan(
                        text: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
                        style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                        TextSpan(
                        text: "Read More",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        ]
                        )
                 
              
                    )
                    
                
                
                
                    
                  ],
                ),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Size",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15),
                 Container(
                  height: 45,
                  child:  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          final isactive = index == selectedindex;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                              selectedindex = index;
                                
                              });
                            },
                          child: Row(
                            children: [
                            Container(
                            margin: EdgeInsets.only(right: 12),
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: isactive ? Color(0xFFF5E9E0) :Colors.white,
                               border: Border.all(
                                  color: isactive ? const Color(0xFFBF6B31).withOpacity(0.5) : Colors.grey.shade300,
                                  width: 2,
                                ),
                            ),
                            child: Text(categories[index],style: TextStyle(color: isactive ? Colors.red: Colors.black,fontSize: 18),),
                          ),
                          
                  
                            ],
                          ),
                          
                          );
                          
                        },)
                 ,),
                  
                ],
              )
            

                ],
              )
           
             ),
            
            ],
          ),
        )
      );
  }
}