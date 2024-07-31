import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_tasks/view/signuptask.dart';
import 'dart:ui';

import 'login.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState(
  );

}

class _splash_screenState extends State<splash_screen> {



  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5),
            () => Navigator.push(context,MaterialPageRoute(builder: (context)=> signuptask())
        ));
  }


  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          // color: const Color(0x9dd1d4)
            color:Colors.teal.shade200
        ),
        child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('Flutter Application',
                style: TextStyle(color:Colors.white,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 35) ,),

            ],
          ),
        ),
      ),
    );
  }
}
