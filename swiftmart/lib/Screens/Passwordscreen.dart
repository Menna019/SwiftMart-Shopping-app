// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/SignIn%20screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController newPassword= TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  GlobalKey passwordKey = GlobalKey();
  bool isSelected_2 = false;
  bool isSelected_3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar( backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
    title: const Text("Forget Password",style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.bold,color: Colors.white,
      ),
      ),
      ),
    backgroundColor:  const Color.fromRGBO(255, 115, 0, 1),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                  width: double.infinity,
                  height: 300,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                  key: passwordKey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    TextFormField(
                    controller:newPassword,
                    obscureText: !isSelected_2,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                    return "Please, Enter new Password";
                    }
                    return null;
                    },
                    decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isSelected_2 =! isSelected_2;
                        });
                      },
                       icon:isSelected_2? const Icon(Icons.visibility) :
                       const Icon((Icons.visibility_off))),
                    labelText: "New Password",labelStyle: const TextStyle(
                    fontSize: 26,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     ),
                     hintText: "Enter new Password",
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                    ),
                     ),
                     ),
                    const SizedBox(height: 40,),
                    
                    TextFormField(
                      controller: confirmPassword,
                     obscureText: !isSelected_3,
                     validator: (value) {
                    if (value == null || value.isEmpty) {
                     return "Please, Confirm your password";
                     }
                    return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                         isSelected_3 =! isSelected_3;
                        });
                      },
                       icon:isSelected_3? const Icon(Icons.visibility) :
                       const Icon((Icons.visibility_off))),
                    labelText: "Confirm Password",labelStyle: const TextStyle(
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
                    ],
                    ),
                  ),
                  ),
                ),
                const SizedBox(height: 50),
 ElevatedButton(
 style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(10),
 ),
  padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 20), 
    backgroundColor: const Color.fromARGB(255, 196, 100, 4),
 ),
 onPressed: () {
  setState(() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Password Changed")));
  });
  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
 },
 child: const Text(
 "Change Password",
 style: TextStyle(
  fontSize: 20,color: Colors.white,
   fontWeight: FontWeight.normal),
  ),
  ),

        ],
      ),
       );
  }
}