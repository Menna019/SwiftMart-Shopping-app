// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/Passwordscreen.dart';
import 'package:swiftmart/Screens/SignUp%20screen.dart';
import 'package:swiftmart/Screens/homeScreen.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  GlobalKey key = GlobalKey();
  bool isSelected = false ;
  @override
  Widget build(BuildContext context) {
 return Scaffold(
body: Stack(
children: [
Positioned(
top: 0,
 left: 0,
right: 0,
child: SizedBox(
height: 400,
width: double.infinity,
child: Image.asset("assets/signin pic.png",fit: BoxFit.cover,
 ),
 ),
 ),


Positioned(
top: 400,
left: 0,
right: 0,
child: Container(
width: double.infinity,
height: 500,
decoration: const BoxDecoration(
color: Color.fromRGBO(255, 115, 0, 1),
borderRadius: BorderRadius.only(
topLeft: Radius.circular(50),
topRight: Radius.circular(50),
 ),
 ),
 ),
 ),

 const Positioned(
left: 50,
top: 420,
child: Text(
 "Sign In", style: TextStyle(
fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold,
 ),
 ),
 ),

Positioned(
top: 500,
left: 0,
right: 0,
child: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 16.0),

child: Form(
key: key,
child: Column(
children: [
TextFormField(
controller: signInEmail,
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
  TextFormField(
  controller: signInPassword,
 obscureText: !isSelected,
 validator: (value) {
if (value == null || value.isEmpty) {
 return "Please, Enter your Password";
 }
return null;
},
decoration: InputDecoration(
  suffixIcon: IconButton(onPressed: (){
    setState(() {
      isSelected =! isSelected;
    });
  },
   icon:isSelected? const Icon(Icons.visibility) :
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
   Padding(
     padding: const EdgeInsets.only(left: 240),
     child: TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const PasswordScreen()));
       }, child: const Text("Forget Password?",style: TextStyle(color: Colors.white),)),
   ),

 const SizedBox(height: 25),
 ElevatedButton(
 style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(10),
 ),
  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 12), 
    backgroundColor: const Color.fromARGB(255, 196, 100, 4),
 ),
 onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
 },
 child: const Text(
 "Sign In",
 style: TextStyle(
  fontSize: 26,color: Colors.white,
   fontWeight: FontWeight.normal),
  ),
  ),

  const SizedBox(height: 15,),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [const Text("Don't have an Account?",style: TextStyle(
      fontSize: 15,color: Colors.white
    ),),
    TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
    }, child: const Text("Sign Up",style: TextStyle(
      fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),))
    ],
  ),
  ],
  ),
  ),
  ),
   ),
   ),
   ],
  ),
 );
 }
}
