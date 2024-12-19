// ignore_for_file: file_names, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/favorite.dart';
import 'package:swiftmart/Screens/homeScreen.dart';
import 'package:swiftmart/Screens/profile.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
    body: Stack(
children: [
Positioned(
top: 80,
left: 0,
right: 0,
child: SizedBox(
height: 300,
width: double.infinity,
child: Image.asset("assets/tshirt.png",
 ),
 ),
 ),


Positioned(
top: 400,
left: 0,
right: 0,
child:  Container(
    width: double.infinity,
   height: 800,
   decoration: const BoxDecoration(
   color:Colors.white,
   borderRadius: BorderRadius.only(
   topLeft: Radius.circular(50),
   topRight: Radius.circular(50),
       ),
       ),
       child:  Column(
         children: [
            const Padding(
             padding: EdgeInsets.only(top: 30,right: 180),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
               children: [
                 Text("Women T-shirt",style: TextStyle(
                     fontSize: 25,fontWeight: FontWeight.bold),
                     ),
                     Icon(Icons.share)
               ],
             ),
           ),
          
           const Padding(
             padding: EdgeInsets.only(top: 10,right: 300),
             child: Text("Purple",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
           ),
   
           Padding(
             padding: const EdgeInsets.only(top: 20,right: 220),
             child: Container(
             width: 150,
             height: 50,
             decoration:  BoxDecoration(color:const Color.fromRGBO(255, 115, 0, 1),
             borderRadius: BorderRadius.circular(10),
             ),
             child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("1",
               style: TextStyle(color: Colors.white,
               fontSize: 20,fontWeight: FontWeight.bold),
               ),
               Row(
                children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.remove),),
                ],
               ),
             ],
             ),
             ),
           ),
           const Padding(
             padding:  EdgeInsets.only(top: 20,right: 300),
             child: Text("About",style: TextStyle(
              fontSize: 23,fontWeight: FontWeight.bold,
              color: Colors.black
              ),
              ),
           ),
          
         const Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Embrace a bold yet timeless look with our vibrant purple"),
                 Text("t-shirt,designed to turn heads wherever you go.Made from"),
                 Text("soft,breathable fabric,this t-shirt ensures you stay comfy and"),
                 Text("stylish all day long.")
               ],
             ),
             const SizedBox(height: 20,),
             ElevatedButton(
   style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
   borderRadius: BorderRadius.circular(10),
   ),
    padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15), 
      backgroundColor: const Color.fromARGB(255, 196, 100, 4),
   ),
   onPressed: () {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
      content: Text("Order Successfully")));
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
   },
   child: const Text(
   "Order Now!",
   style: TextStyle(
    fontSize: 20,color: Colors.white,
     fontWeight: FontWeight.normal),
    ),
    ),
         ],
       ),
       ),
 ),
   
],

    ),
   bottomNavigationBar: CurvedNavigationBar(
      backgroundColor:Colors.white,
      color: const Color.fromARGB(255, 175, 82, 24),
      items:[
       IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
      }, icon: const Icon(Icons.home_filled),iconSize: 30,color: Colors.white),
      
      IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductScreen()));
      }, icon: const Icon(Icons.shopping_bag),iconSize: 30,color: Colors.white),

      IconButton(onPressed: (){}, icon: const Icon(Icons.card_giftcard),iconSize: 30,color: Colors.white),
      
     
      IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoriteScreen()));
      }, icon: const Icon(Icons.favorite),iconSize: 30,color: Colors.white),
      IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
      }, icon: const Icon(Icons.person),iconSize: 30,color: Colors.white)      ],
      animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}