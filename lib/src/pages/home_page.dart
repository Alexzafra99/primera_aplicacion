import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Texto_APPBAR")),
      body: const Center(
        child: Text("Hola mundo"))
      );
  }
}