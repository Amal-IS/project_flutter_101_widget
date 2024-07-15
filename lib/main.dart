
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Personal Information'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
  
    return   Scaffold( body:SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Row(children: [
            
            SizedBox(
              height: 178,
              width: 128 ,
              
             child: Card(
              color:Colors.orange ,
           
              child: Image(image: AssetImage("Asset/doctor_image.png"),fit:BoxFit.contain ,)),
             
              ),
              SizedBox(width: 34,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Dr.Nora",style: TextStyle(fontSize: 34),),
                Text("Heart Specialist",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                SizedBox(height: 16,),
                Row(children: [
                  SizedBox(
                  height: 48,
                  width: 48,
                  child: Card(
                  color: Colors.orange,
            
                  child: Icon(Icons.mail,color: Colors.white,size: 32,),),),
                  SizedBox(width: 8,),
                  SizedBox(
                  height: 48,
                  width: 48,
                  child: Card(
                  color: Colors.orange,
            
                  child: Icon(Icons.phone,color: Colors.white,size: 32,),),),
                    SizedBox(width: 8,),
                  SizedBox(
                  height: 48,
                  width: 48,
                  child: Card(
                  color: Colors.orange,
            
                  child: Icon(Icons.video_call,color: Colors.white,size: 32,),),)
                  
                  ],),
                ],
              ),
            
            ],),
            const SizedBox(height: 32,),
          const Text("About",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
         const SizedBox(height: 8,),
          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quisnostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Color.fromARGB(255, 98, 98, 98)),),
          const SizedBox(height: 64,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Column(children: [Row(children: [Icon(Icons.location_on_outlined,color: Colors.grey,),
            SizedBox(width: 4,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [Text("Address",style: TextStyle(fontSize: 24),),
            Text("House 2 Road 5\nSaudi Arabia, Riyadh\nking Fisal Hospital"),
            
            ],)
            ],

            ),
            SizedBox(height: 8,),
            Row(children: [Icon(Icons.location_on_outlined,color: Colors.grey,),
            SizedBox(width: 4,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [Text("Address",style: TextStyle(fontSize: 24),),
            Text("House 2 Road 5\nSaudi Arabia, Riyadh\nking Fisal Hospital"),
            
            ],)
            ],

            ),
            
            
            
            ],
            
            ),
            ClipRRect(borderRadius:BorderRadius.circular(16), child:const Image(image: AssetImage("Asset/map_image.JPG"),height: 200,width: 150,fit: BoxFit.cover,))
         ],),
        ],),
      ),
    )
    );
  }
}
