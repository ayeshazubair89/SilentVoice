import 'package:flutter/material.dart';
class insta extends StatelessWidget {
  const insta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("  Instagram ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900),),


        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Row(
              children: [
                Container(
                  width: 30,
                  child:  IconButton(
                    icon: IconButton(
                      icon: Icon(Icons.heart_broken_outlined, color: Colors.black
                          , size: 30),
                      onPressed: () {
                      },
                    ),
                    onPressed: () {

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 30),
                  child: Container(
                    width: 30,
                    child:  IconButton(
                      icon: IconButton(
                        icon: Icon(Icons.messenger_outline, color: Colors.black
                            , size: 30),
                        onPressed: () {
                        },
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                child: Container(
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black26, // Border ka color yahan set karein
                                width: 2, // Border ki chaurai yahan set karein
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/a.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Your story",style: TextStyle(color: Colors.black38,fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orangeAccent, // Border ka color yahan set karein
                                width: 2, // Border ki chaurai yahan set karein
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/b.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "liizey",style: TextStyle(color: Colors.black38,fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.purpleAccent.shade200, // Border ka color yahan set karein
                                width: 2, // Border ki chaurai yahan set karein
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/c.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "mai_daejaz",style: TextStyle(color: Colors.black38,fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orangeAccent.shade200, // Border ka color yahan set karein
                                width: 2, // Border ki chaurai yahan set karein
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/d.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "trynafindnoor",style: TextStyle(color: Colors.black38,fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                     width: double.infinity,
                     height: 1,
                     decoration: BoxDecoration(color: Colors.black12),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black26, // Border ka color yahan set karein
                                  width: 2, // Border ki chaurai yahan set karein
                                ),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/pic.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Text("laibanasir035",
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                                ),
                                Text("Explore",
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 250),
                            child: Icon(Icons.dehaze),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(color: Colors.black12),
                    ),
                    Image.asset("assets/images/img_1.png"),
                  ],
                ),
              ),
          /*    Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(width: 25,),
                  Icon(Icons.search,),
                  Icon(Icons.add),
                  Icon(Icons.play_arrow_outlined),
                ],
              ),*/

            ],
          ),
      ),



    );
  }
}
