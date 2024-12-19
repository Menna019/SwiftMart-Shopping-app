// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/GiftsScreen.dart';
import 'package:swiftmart/Screens/homeScreen.dart';
import 'package:swiftmart/Screens/productScreen.dart';
import 'package:swiftmart/Screens/profile.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: const Color.fromRGBO(255, 115, 0, 1),
    appBar: AppBar(
    backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
    title: const Text("SwiftMart",style: TextStyle(fontSize: 40,
    fontWeight: FontWeight.bold,color: Colors.white,
      ),
      ),centerTitle: true,
      
      ),


      
      bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: const Color.fromRGBO(255, 115, 0, 1),
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