import 'package:flutter/material.dart';
class MediaQueryClass extends StatelessWidget {
  const MediaQueryClass({super.key});

  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: w<=600?AppBar(
        centerTitle: true,
        title: const Text('Portrait mode'),
      ):null,
      body:w>600? const Center(child: Text('Screen is Land Scape mode'),):const Center(child: Text('Screen is Portrait mode'),),
    );
  }
}
