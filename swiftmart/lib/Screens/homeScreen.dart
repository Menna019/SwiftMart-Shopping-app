// ignore_for_file: file_names, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/GiftsScreen.dart';
import 'package:swiftmart/Screens/favorite.dart';
import 'package:swiftmart/Screens/productScreen.dart';
import 'package:swiftmart/Screens/profile.dart';
import 'package:swiftmart/homeList/homelist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
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
      actions: const [
      Padding(padding: EdgeInsets.only(right: 10),
      child: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage("assets/profile.jpg"),
      ),
      ),
      ],
      ),
      drawer:  Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text("Setting",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170,top: 20),
                child: TextButton(onPressed: (){}, 
                child: Text("Theme",style: TextStyle(fontSize: 24),)),
              ),

               Padding(
                padding: const EdgeInsets.only(right: 140,top: 20),
                child: TextButton(onPressed: (){}, 
                child: Text("Language",style: TextStyle(fontSize: 24),)),
              ),
               Padding(
                padding: const EdgeInsets.only(right: 170,top: 20),
                child: TextButton(onPressed: (){}, 
                child: Text("Help",style: TextStyle(fontSize: 24),)),
              ),
               Padding(
                padding: const EdgeInsets.only(right: 170,top: 20),
                child: TextButton(onPressed: (){}, 
                child: Text("LogOut",style: TextStyle(fontSize: 24),)),
              ),
            ],
          ),
        ),
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
      body:  Column(
        children: [
           const Padding(
            padding: EdgeInsets.all(16.0),
            child: SearchBar(
            hintText: "Search...",
            ),
          ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: homeList.length,
            itemBuilder:(context,index) {
            return ListTile(
            leading: Container(
             width: 100,
             height: 600,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
            image: AssetImage("${homeList[index].image}"),
            ),
            ),
            ),
            title: Text(homeList[index].productName,style: const TextStyle(
            fontSize: 17,fontWeight: FontWeight.bold),),
            subtitle: Text("Type: ${homeList[index].type}",style: const TextStyle(fontSize: 15),),
            trailing: Text("Price: ${homeList[index].price}",style:const TextStyle(fontSize: 14),),
            );
            }
           ),
        ),
        ],
      ),
    );
  }
}