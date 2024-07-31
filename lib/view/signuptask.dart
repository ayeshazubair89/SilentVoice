//import 'dart:js_interop';

import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';
class signuptask extends StatefulWidget {
  const signuptask({super.key});

  @override
  State<signuptask> createState() => _signuptaskState();
}

class _signuptaskState extends State<signuptask> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  //FirebaseAuth  auth = FirebaseAuth.instance;
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("AYESHA ZUBAIR",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.teal.shade200,

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                width: 30,
                child: Image.asset(
                  'assets/images/pic.png',
                ),
              ),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child:  SingleChildScrollView(
              scrollDirection:Axis.vertical,
              child: Container(
                color: Colors.teal.shade50,
               child:

                 Form(
                   key: formkey,
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [

                        Container(
                         height: 40,
                         child: TextFormField(
                           controller: usernameController,
                           obscureText: false,
                           keyboardType: TextInputType.text,
                           decoration: InputDecoration(
                           icon: Icon(Icons.account_circle),
                               hintText: " Username",hintStyle: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),
                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                           ),
                         ),
                       ),
                      SizedBox(height: 10,),
                       Container(
                         height: 40,
                         child: TextFormField(
                           controller: emailController,
                           obscureText: false,
                           keyboardType: TextInputType.text,
                           decoration: InputDecoration(
                               icon: Icon(Icons.email),
                               hintText: " Email",
                               hintStyle: TextStyle(color: Colors.black,fontSize: 14,
                                   fontWeight: FontWeight.w400),
                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Expanded(
                             child: Container(
                               height: 40
                               ,
                              /* width: 100,*/
                               child: TextFormField(
                                 controller: passwordController,
                                 obscureText: true,
                                 obscuringCharacter: "*",
                                 keyboardType: TextInputType.text,
                                 decoration: InputDecoration(
                                     icon: Icon(Icons.password),
                                     suffixIcon: Icon(Icons.visibility_off),
                                     hintText: " Password",
                                     hintStyle: TextStyle(color: Colors.black,fontSize: 14,
                                         fontWeight: FontWeight.w400),
                                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 20,),
                           Expanded(
                             child: Container(
                               height: 40
                               ,
                              /* width: 100,*/
                               child: TextFormField(
                                 controller: confirmPasswordController,
                                 obscureText: true,
                                 obscuringCharacter: "*",
                                 keyboardType: TextInputType.text,
                                 decoration: InputDecoration(

                                     suffixIcon: Icon(Icons.visibility_off),
                                     hintText: " Confirm Password",
                                     hintStyle: TextStyle(color: Colors.black,fontSize: 14,
                                         fontWeight: FontWeight.w400),
                                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 10,),
                     Container(

                           width: 150,

                           child: ElevatedButton(

                               onPressed: () {
                                 try {
                                   if(emailController.text.toString().isEmpty) {
                                     print("Please enter Email");
                                   } else if(usernameController.text.toString().isEmpty) {
                                     print("Please enter Username");
                                   } else if(passwordController.text.toString().isEmpty) {
                                     print("Please enter Password");
                                   } else if(confirmPasswordController.text.toString().isEmpty) {
                                     print("Please enter confirm password");
                                   } else if(passwordController.text.toString().length < 6) {
                                     print("Please enter Password Greater or 6 Digits");
                                   } else if(confirmPasswordController.text.toString().length < 6) {
                                     print("Please enter confirm password Greater or 6 Digits");
                                   } else if(passwordController.text.toString() != confirmPasswordController.text.toString()) {
                                     print('Passwords do not match. Please enter matching passwords.');
                                   } else if (formkey.currentState!.validate()) {
                                     print('You are a good person');
                                   }
                                 } catch (error) {
                                   print('Error occurred: $error');
                                 }
                               },

                             child:
                             Text("Login", textAlign: TextAlign.center,
                               style: TextStyle(color : Colors.white,fontSize: 16,
                                   fontWeight:FontWeight.w400),),
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.teal.shade200,
                             ),
                           ),
                           decoration: BoxDecoration(
                               color: Colors.teal.shade200,
                               borderRadius: BorderRadius.circular(180)
                           ),

                         ),

                       SizedBox(height: 10,),
                       Container(

                         width: 450,

                         child: ElevatedButton(

                           onPressed: () {  },
                           child:
                           Text("Login via Phone number", textAlign: TextAlign.center,
                             style: TextStyle(color : Colors.white,fontSize:16,
                                 fontWeight:FontWeight.w400),),
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.teal.shade200,
                           ),
                         ),
                         decoration: BoxDecoration(
                             color: Colors.teal.shade200,
                             borderRadius: BorderRadius.circular(180)
                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 240,top: 70),
                         child: Text("Back ?",
                           style: TextStyle(color:Colors.black54,fontSize: 15,fontWeight:FontWeight.w400,
                               fontStyle:FontStyle.italic,decoration: TextDecoration.underline) ,),
                       ),
                     ],
                   ),
                 ),

              ),
            ),

        ),

      );

  }
}
