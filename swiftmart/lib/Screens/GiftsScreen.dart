// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/favorite.dart';
import 'package:swiftmart/Screens/homeScreen.dart';
import 'package:swiftmart/Screens/productScreen.dart';
import 'package:swiftmart/Screens/profile.dart';

class GiftsScreen extends StatefulWidget {
  const GiftsScreen({super.key});

  @override
  State<GiftsScreen> createState() => _GiftsScreenState();
}

class _GiftsScreenState extends State<GiftsScreen> {
  TextEditingController creditCard = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
    title: const Text("Gifts",style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.bold,color: Colors.white,
      ),
      ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
        height: 350,width: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/Gifts and offers.png")),
        ),
        ),
             Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Padding(
                  padding:  EdgeInsets.only(left: 30),
                  child: Text(
                  "Your Bonus",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                              ),
                ),
               const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 175, 82, 24),
                  ),
                    child: const Center(
                    child: Text(
                      "4\$",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
                ],
              ),
               Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Text(
                  "Your Gifts",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
               const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 175, 82, 24),
                  ),
                  child: const Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
            ),
          ],
        ),
        const SizedBox(height: 40),
        TextField(
        controller: creditCard,
        decoration:  InputDecoration(
        labelText: "Credit Card",labelStyle: const TextStyle(color: Colors.white,fontSize: 25),
        hintText: "Enter your account number",
        helperStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        )
        ),
        ),
        const SizedBox(height: 40,),
        ElevatedButton(
         style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
         ),
          padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 14), 
            backgroundColor: const Color.fromARGB(255, 196, 100, 4),
         ),
         onPressed: () {
          setState(() {
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
           content: Text("Submit Successfully!"),
            ),
             );
          }
          );
         },
         child: const Text(
         "Submit",
         style: TextStyle(
          fontSize: 20,color: Colors.white,
           fontWeight: FontWeight.normal),
          ),
          ),
         
         ],
         
        ),
      ),
        
       
         

    backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
     bottomNavigationBar: CurvedNavigationBar(
      backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
      color: const Color.fromARGB(255, 175, 82, 24),
      items:[
       IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
      }, icon: const Icon(Icons.home_filled),iconSize: 30,color: Colors.white),
      
      IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductScreen()));
      }, icon: const Icon(Icons.shopping_bag),iconSize: 30,color: Colors.white),

      IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const GiftsScreen()));
      }, icon: const Icon(Icons.card_giftcard),iconSize: 30,color: Colors.white),
      
     
      IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoriteScreen()));
      }, icon: const Icon(Icons.favorite),iconSize: 30,color: Colors.white),
      IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
      }, icon: const Icon(Icons.person),iconSize: 30,color: Colors.white)
      ],
      animationDuration: const Duration(milliseconds: 300),
      ),

    );
  }
}