// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/SignIn%20screen.dart';
import 'package:swiftmart/Screens/homeScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  GlobalKey signUpKey = GlobalKey();
  bool isSelected =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromRGBO(255, 115, 0, 1),
    appBar: AppBar( backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
    title: const Text("Sign Up",style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.bold,color: Colors.white,
      ),
      ),
      ),
body: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 150),

child: Form(
key: signUpKey,
child: Column(
children: [
TextFormField(
controller: firstName,
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
controller: lastName,
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
controller: signUpEmail,
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
  controller: signUpPassword,
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
const SizedBox(height: 100,),
 //Button------------------------------------------------------------
 Padding(
   padding:  EdgeInsets.symmetric(vertical: 20),
   child: ElevatedButton(
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
   "Sign Up",
   style: TextStyle(
    fontSize: 20,color: Colors.white,
     fontWeight: FontWeight.normal),
    ),
    ),
 ),

  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [const Text("I already have an account",style: TextStyle(
      fontSize: 15,color: Colors.white
    ),),
    TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
    }, child: const Text("Sign In",style: TextStyle(
      fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),))
    ],
  )
],
),
),
),
),


);
  }
}