import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final estiloTexto = TextStyle(fontSize: 20);

  int contador = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Texto_APPBAR")
      ),
      body: Center(
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Número de clicks:", 
                style: estiloTexto,
              ),
              Text('$contador',
                style: estiloTexto
              )
            ], 
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          contador++;
          setState(() {
            
          });
        },
        child: 
          Icon (Icons.add),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}