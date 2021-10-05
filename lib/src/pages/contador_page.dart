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
      floatingActionButton: crearBotones()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        Boton3(),
        Expanded(child: SizedBox()),  
        Boton2(),
        Boton1()]
    );
  }

  Widget Boton1(){
    return FloatingActionButton(
        onPressed: suma,
        child: 
          Icon (Icons.add)
      );
  }
  Widget Boton2(){
    return FloatingActionButton(
        onPressed: resta,
        child: 
          Icon (Icons.remove)
      );
  }
  Widget Boton3(){
    return FloatingActionButton(
        onPressed: cero,
        child: 
          Icon (Icons.exposure_zero)
      );
  }

  void suma() {
    _contador++;
    setState(() {
            
    });
  }

  void resta() {
    _contador--;
    setState(() {
            
    });
  }

  void cero() {
    _contador=0;
    setState(() {
            
    });
  }
}
