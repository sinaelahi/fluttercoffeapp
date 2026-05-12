import 'package:flutter/material.dart';
import 'package:projesina/CafeSection/cafe_main_imagemodule.dart';
import 'package:projesina/CafeSection/cafe_model.dart';

class CafePurchase extends StatefulWidget{
  @override
  State<CafePurchase> createState() => _CafePurchaseState();
}

class _CafePurchaseState extends State<CafePurchase> {
  @override
    List<CafeModel> cafemainmodule = CafeMainImagemodule().getdata();

    final List<String> categories = ["S","M","L"];

    int selectedindex = 0 ;

  Widget build(BuildContext context) {
    
      return Scaffold(
        bottomNavigationBar: Container(
              height: 180,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Row(
                   children: [
                     Icon(Icons.wallet,size: 30,color:Colors.deepOrange ,),
                     const SizedBox(width: 20),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Cash/Wallet",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                         Text("\$ 4.58",style: TextStyle(
                         color: Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                       ],
                     ),
                     Spacer(),
                     Icon(Icons.keyboard_arrow_down_sharp)
                   ],
                 ),
                 FilledButton(
                  onPressed: () {
                    
                  }, 
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    minimumSize: Size(400, 56),
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
                  
                    Text("Order",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                    Icon(Icons.heart_broken_rounded,size: 25,)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 43,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrange
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Deliver",style: TextStyle(color: Colors.white, fontSize: 21,fontWeight: FontWeight.bold),))),
                             Container(
                          height: 35,
                          width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // color: Colors.deepOrange
                          ),
                          child: Align(
                            alignment: Alignment.center,
                          child: Text("Pick up",style: TextStyle(fontSize: 21),),))
                        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Delivery Adress",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15),
                    Text("Jl. Kpg Sutoyo",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                    style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(40, 30),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.black),
                          ),
                           child: Row(
                            children: [
                              Icon(Icons.edit_document,color: Colors.black,),
                              SizedBox(width: 5),
                              Text("Edit Adress",style: TextStyle(color: Colors.black),)
                            ],
                           )
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(30, 30),
                            side: BorderSide(color: Colors.black),
                            backgroundColor: Colors.white
                          ),
                           child: Row(
                            children: [
                              Icon(Icons.note,color: Colors.black,),
                              SizedBox(width: 5),
                              Text("Add note",style: TextStyle(color: Colors.black),)
                            ],
                           )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                      child: SizedBox(
                        width: 360,
                        child: Divider(thickness: 1,color: Colors.black.withOpacity(0.2),)),
                    ),
                    
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 20),
                  child: Row(
                    children: [
                      Image.asset("assets/images/2.png",width: 74,height: 74,),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Coffe mocha",style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
                          Text("Deep Foam",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black.withOpacity(0.1),),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.remove, size: 16, color: Colors.black),
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                              ),
                            ),

                            SizedBox(width: 12),

                        
                            SizedBox(
                              width: 20,
                              height: 32,
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black.withOpacity(0.1), ),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add, size: 16, color: Colors.black),
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        )
                      ),
                      
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Divider(thickness: 4,color: Colors.black.withOpacity(0.05),),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                              height: 66,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.1), 
                                  width: 1,          
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.dangerous_outlined,size: 21,color: Colors.deepOrange,),
                                  const SizedBox(width: 20),
                                  Text("1 Discount is Applies",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_outlined)
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text("Payment Summary",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Price",style: TextStyle(fontSize: 18,color: Colors.black,),),                              
                                Text("\$4.53",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),    
                              ]                          
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Delivery Fee",style: TextStyle(fontSize: 18,color: Colors.black,),),
                                Text("\$1.0",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),   
                              ],
                            )

                    ],
                  ),
                )
                ],
              )
           
             ),

        );

}
}