import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projesina/CafeSection/cafe_mainmenu.dart';

class CafeLoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
        Stack(
          children: [
            Center(
              child: Column(
                children: [
                      Image.asset('assets/images/6.png',
                      fit: BoxFit.cover,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Fall in Love with Coffee in Blissful Delight!",
                            textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 40,),),
                            Text("Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white30,fontSize: 19),),
                            SizedBox(height: 30),
                            FilledButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CafeMainmenu()));
                              },
                              style: FilledButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 147, 91, 7),
                              minimumSize: Size(350, 60),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))
                              ),
                               child: Text
                               ("Get started",
                               style: TextStyle(color: Colors.white,fontSize: 19),)
                               )
                            
                          ],
                ),
              ),
                ],
              ),
            )
           
            
          ],    
        
        ));
    
  }

}