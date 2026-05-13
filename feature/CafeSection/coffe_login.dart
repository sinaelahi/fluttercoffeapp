import 'package:flutter/material.dart';
import 'package:sahand/coffeapp/fluttercoffeapp/feature/CafeSection/cafe_mainmenu.dart';
import 'package:sahand/core/utilitys/sahand_padding_utility.dart';

class CoffeLogin extends StatelessWidget {
   CoffeLogin({super.key});
  String loginimage = "assets/images/6.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).shadowColor,
      body: Container(
        child: Padding(
              padding: SahandPaddingUtility.settingsPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.coffee,color: Colors.white,size: 80,),
              SizedBox(height: 50,),
              textFieldForlogin(label: 'Username',),
               SizedBox(height: 20,),
              textFieldForlogin(label: 'Password',),
              SizedBox(height: 30),
              
              FilledButton(
                style: FilledButton.styleFrom(
                  // fixedSize: Size(300, 50),
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CafeMainmenu()));
                },
                child: Text("Login"),
              ),
               SizedBox(height: 10,),
              TextButton(onPressed: (){}, child: Text("Register")),
            ],
          ),
        ),
      ),
    );
  }
}

class textFieldForlogin extends StatelessWidget {
   textFieldForlogin({super.key,required this.label});

  String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.orange),
        ),
        label: Text(label),
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
