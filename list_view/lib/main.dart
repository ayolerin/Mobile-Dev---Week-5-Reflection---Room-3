import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var titleList=[
    "Chicken Burger",
    "Lamb Burger",
    "Beef Burger",
    "Yolo Burger",
    "Chicken Pizza",
    "Peperoni Pizza",
    "Cheese Pizza",
    "Yolo Pizza"
  ];

  var descriptionList=[
    "Lorem Ipsum Lorem IpsumLorem ",
    "Lorem Ipsum Lorem IpsumLorem ",
    "Lorem Ipsum Lorem IpsumLorem ",
    "Lorem Ipsum Lorem IpsumLorem ",
    "Lorem Ipsum Lorem IpsumLorem ",
    "Lorem Ipsum Lorem IpsumLorem ",
    "Lorem Ipsum Lorem IpsumLorem ",
    "Lorem Ipsum Lorem IpsumLorem ",
    
  ]
  ;

  var imageList=[
    'assets/burger1.png',
    'assets/burger2.png',
    'assets/burger3.png',
    'assets/burger4.png',
    'assets/pizza1.png',
    'assets/pizza2.png',
    'assets/pizza3.png',
    'assets/pizza4.png',
    
  ];
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width * 0.6;
    return Scaffold(

      appBar: AppBar(title: Text("List View design",)),
      
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context,index){
         return GestureDetector(
           onTap: (){},
           child: Card(
             child: Row(children: [
               Container(
                 width: 100,
                 height:100,
                 child: Image.asset(imageList[index]),
               ),
               Padding(padding: const EdgeInsets.all(10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Text(
                    titleList[index],
                    style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    width: width,
                    child: Text(
                      descriptionList[index],
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
               ],),)
             ]),
           ),
         ); 
        } ,) ,
    );
  }
}