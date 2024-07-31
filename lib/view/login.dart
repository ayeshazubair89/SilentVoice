import 'package:flutter/material.dart';
import 'package:flutter_firebase_tasks/view/signup.dart';
import 'dart:async';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold( body:   Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),fit: BoxFit.fitWidth)),
        child: Padding(
          padding: const EdgeInsets.only(top: 350,left:30,right: 30),
          child: Column(

            children: [
              Text('Welcome',
                style: TextStyle(color:Colors.teal.shade200,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 35) ,),
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
              InkWell(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=> signup())),
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
              Text('Forgot Password',
                style: TextStyle(color:Colors.black,fontSize: 12) ,),
              Padding(
                padding: const EdgeInsets.only(left: 140,top: 70),
                child: Text("Don't have an Account?",
                  style: TextStyle(color:Colors.black,fontSize: 15,fontWeight:FontWeight.w400,fontStyle:FontStyle.italic) ,),
              ),
            ],
          ),
        ),
      ),
    ));

  }
}

