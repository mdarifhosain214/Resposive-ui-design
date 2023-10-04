import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout builder widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double size =(MediaQuery.sizeOf(context).width/3) ;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const  Text("Layout builder widget"),
      ),
      body: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
        if(constraints.maxWidth>600){
          return _buildLandscape(size);
        }
        else{
          return _buildPortraid(size);
        }
      }),
    );

  }
  Widget _buildPortraid(double size){
    return  Center(
      child: Container(
        color: Colors.teal,
        height:size,
        width: size,
      ),
    );
  }
  Widget _buildLandscape(double size){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.teal,
          height:size,
          width: size,
        ),
        Container(
          color: Colors.teal,
          height:size,
          width: size,
        ),


    ],);
  }
}





