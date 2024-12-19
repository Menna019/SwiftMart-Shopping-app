// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/GiftsScreen.dart';
import 'package:swiftmart/Screens/favorite.dart';
import 'package:swiftmart/Screens/homeScreen.dart';
import 'package:swiftmart/Screens/productScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    TextEditingController firstNameProfile = TextEditingController();
  TextEditingController lastNameProfile = TextEditingController();
  TextEditingController EmailProfile = TextEditingController();
  TextEditingController PasswordProfile = TextEditingController();
  GlobalKey signUpKey = GlobalKey();
  bool isSelectedProfile =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
    title: const Text("Profile",style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.bold,color: Colors.white,
      ),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(children:  [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar( 
                  radius: 50,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
                SizedBox(width: 10,),
                TextButton(onPressed: (){}, 
                child: Text("Change your picture",style: TextStyle(fontSize: 12,
                color: Color.fromARGB(255, 102, 27, 0)),))
              ],
            ),
          ),
          SizedBox(height: 30,),
         Form(
        key: signUpKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
          TextFormField(
          controller: firstNameProfile,
          validator: (value) {
          if (value == null || value.isEmpty) {
          return "Please, Enter your First name";
          }
          return null;
          },
          decoration: InputDecoration(
          labelText: "First Name",
          labelStyle: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
           ),
          hintText: "Enter your First name",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
           ),
          ),
          ),
           const SizedBox(height: 30),
           // last name---------------------------------------
          TextFormField(
          controller: lastNameProfile,
          validator: (value) {
          if (value == null || value.isEmpty) {
          return "Please, Enter your Last name";
          }
          return null;
          },
          decoration: InputDecoration(
          labelText: "Last Name",
          labelStyle: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
           ),
          hintText: "Enter your Last name",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
           ),
          ),
          ),
           const SizedBox(height: 30),
           // Email--------------------------------------------------
           TextFormField(
          controller: EmailProfile,
          validator: (value) {
          if (value == null || value.isEmpty) {
          return "Please, Enter your Email";
          }
          return null;
          },
          decoration: InputDecoration(
          labelText: "Email",
          labelStyle: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
           ),
          hintText: "Enter your Email",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
           ),
          ),
          ),
           const SizedBox(height: 30),
          // password ----------------------------------------------------
            TextFormField(
            controller: PasswordProfile,
           obscureText: !isSelectedProfile,
           validator: (value) {
          if (value == null || value.isEmpty) {
           return "Please, Enter your Password";
           }
          return null;
          },
          decoration: InputDecoration(
            suffixIcon: IconButton(onPressed: (){
              setState(() {
          isSelectedProfile =! isSelectedProfile;
              });
            },
             icon:isSelectedProfile? const Icon(Icons.visibility) :
             const Icon((Icons.visibility_off))),
          labelText: "Password",labelStyle: const TextStyle(
          fontSize: 26,
           fontWeight: FontWeight.bold,
           color: Colors.white,
           ),
           hintText: "Enter your Password",
           border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20),
          ),
           ),
           ),
          const SizedBox(height: 70,),
           //Button------------------------------------------------------------
           Padding(
             padding:  EdgeInsets.symmetric(vertical: 0),
             child: ElevatedButton(
             style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),
             ),
              padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 15), 
              backgroundColor: const Color.fromARGB(255, 196, 100, 4),
             ),
             onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
             },
             child: const Text(
             "Change Profile",
             style: TextStyle(
              fontSize: 20,color: Colors.white,
               fontWeight: FontWeight.normal),
              ),
              ),
           ),
          ],
          ),
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