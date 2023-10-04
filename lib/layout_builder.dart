import 'package:flutter/material.dart';
class LayoutBuilderClass extends StatelessWidget {
  const LayoutBuilderClass({super.key});

  @override
  Widget build(BuildContext context) {
    double h =(MediaQuery.sizeOf(context).height) ;
    double w =(MediaQuery.sizeOf(context).width) ;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const  Text("Layout builder widget"),
      ),
      body: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
        if(constraints.maxWidth>600){
          return _buildLandscape(h/2);
        }
        else{
          return _buildPortrait(w/2);
        }
      }),
    );

  }
  Widget _buildPortrait(double size){
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Container(
            color: Colors.teal,
            height:size,
            width: size,
          ),
        ],
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
        Container(
          color: Colors.teal,
          height:size,
          width: size,
        ),


      ],);
  }
}