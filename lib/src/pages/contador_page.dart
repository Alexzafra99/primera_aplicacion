import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = TextStyle(fontSize: 20);

  int _contador = 0; 

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
                style: _estiloTexto,
              ),
              Text('$_contador',
                style: _estiloTexto
              )
            ], 
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _contador++;
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