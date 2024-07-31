import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

          body:Center(


             child: Container(
                       decoration: const BoxDecoration(
              color: Colors.black12,
               image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),fit: BoxFit.fitWidth)
                       ),
                       child: Padding(
              padding: const EdgeInsets.only(top: 70,left:70,right: 70),
              child: Column(

                children: [
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "username",hintStyle: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "email",hintStyle: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                    ),
                  ),
                  Row(
                    children: [
                      TextFormField(
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "password",hintStyle: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                        ),
                      ),
                      TextFormField(
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "confirm password",hintStyle: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                        ),
                      ),
                    ],
                  ),
                  Center(

                    child: Card(
                      elevation: 30,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                      child: Container(
                        height:40,
                        width: 100,

                        child: Text("Login", textAlign: TextAlign.center,
                          style: TextStyle(color : Colors.white,fontSize: 21,fontWeight:FontWeight.w400),),
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: BorderRadius.circular(180)
                        ),

                      ),
                    ),
                  ),
                  Center(

                    child: Card(
                      elevation: 30,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                      child: Container(
                        height:40,
                        width: 250,

                        child: Text("Login", textAlign: TextAlign.center,
                          style: TextStyle(color : Colors.white,fontSize: 21,fontWeight:FontWeight.w400),),
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: BorderRadius.circular(180)
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140,top: 70),
                    child: Text("Already have an Account?",
                      style: TextStyle(color:Colors.black,fontSize: 15,fontWeight:FontWeight.w400,fontStyle:FontStyle.italic) ,),
                  ),
/*
                  Text('SignUp',
                    style: TextStyle(color:Colors.teal.shade200,
                        fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 35

                    ) ,

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 30,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                        child: Container(
                          height: 30,
                          width: 30,

                          child: Icon( Icons.account_circle,size: 28,color: Colors.white,),
                          decoration: BoxDecoration(
                              color: Colors.teal.shade200,
                              borderRadius: BorderRadius.circular(180)
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: "username",hintStyle: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 30,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                        child: Container(
                          height: 30,
                          width: 30,

                          child: Icon( Icons.email,size: 28,color: Colors.white,),
                          decoration: BoxDecoration(
                              color: Colors.teal.shade200,
                              borderRadius: BorderRadius.circular(180)
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "  email",hintStyle: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 30,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                        child: Container(
                          height: 30,
                          width: 30,

                          child: Icon( Icons.lock,size: 28,color: Colors.white,),
                          decoration: BoxDecoration(
                              color: Colors.teal.shade200,
                              borderRadius: BorderRadius.circular(180)
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: " password",hintStyle: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 30,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                        child: Container(
                          height: 30,
                          width: 30,

                          child: Icon( Icons.lock,size: 28,color: Colors.white,),
                          decoration: BoxDecoration(
                              color: Colors.teal.shade200,
                              borderRadius: BorderRadius.circular(180)
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: "confirm password",hintStyle: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap:
                        () => Navigator.push(context,MaterialPageRoute(builder: (context)=> login())
                    ),
                    child: Card(
                      elevation: 30,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                      child: Container(
                        height:40,
                        width: 200,

                        child: Text("SignUp", textAlign: TextAlign.center,
                          style: TextStyle(color : Colors.white,fontSize: 21,fontWeight:FontWeight.w400),),
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: BorderRadius.circular(180)
                        ),

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 140,top: 70),
                    child: Text("Already have an Account?",
                      style: TextStyle(color:Colors.black,fontSize: 15,fontWeight:FontWeight.w400,fontStyle:FontStyle.italic) ,),
                  ),*/
                ],
              ),
                       ),
                     ),

      )
      );
  }
}
