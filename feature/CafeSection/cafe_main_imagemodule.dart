import 'package:projesina/CafeSection/cafe_model.dart';

class CafeMainImagemodule {
 List<CafeModel> getdata(){
   List<CafeModel> coffeeimages = [];
  
  CafeModel cafemodel1 = CafeModel(
    coffeeurl: 'assets/images/2.png',
    coffename: "Mocha",
    desc: "Deep Foam",
    price: "5.53");
  CafeModel cafemodel2 = CafeModel(
    coffeeurl: 'assets/images/3.png',
    coffename: "Flat White",
    desc: "Deep Foam",
    price: "4.89");
  CafeModel cafemodel3 = CafeModel(
    coffeeurl: 'assets/images/4.png',
    coffename: "Caffe Panna",
    desc: "Ice/Hot",
    price: "4.53");
  CafeModel cafemodel4 = CafeModel(
    coffeeurl: 'assets/images/5.png',
    coffename: "Mocha",
    desc: "Ice/Hot",
    price: "6.53");

  coffeeimages.add(cafemodel1);
  coffeeimages.add(cafemodel2);
  coffeeimages.add(cafemodel3);
  coffeeimages.add(cafemodel4);


  return coffeeimages;
 }
    
    
      
}