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
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: 
                      TextButton(
                        onPressed: suma, 
                        child: Text("+")
                      )
                  ),
                  Expanded(
                    child: 
                      TextButton(
                        onPressed: resta, 
                        child: Text("-")
                      )
                  ),
                  Expanded(
                    child: 
                      TextButton(
                        onPressed: cero, 
                        child: Text("0")
                      )
                  )
          
                ],
              )
            ], 
          )
      ),
      
      floatingActionButton: crearBotones()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget crearBotones() {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Boton4(),
            Boton5()
          ],
        ),
        SizedBox(height: 15.0),
        Row(
          children: [
            SizedBox(width: 30.0),
            Boton3(),
            Expanded(child: SizedBox()),  
            Boton2(),
            Boton1()
          ]
        )
      ]
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
  Widget Boton4(){
    return FloatingActionButton(
        onPressed: mas2,
        child: 
          Icon (Icons.exposure_plus_2_rounded)
      );
  }
  Widget Boton5(){
    return FloatingActionButton(
        onPressed: menos2,
        child: 
          Icon (Icons.exposure_neg_2_rounded)
      );
  }

  void suma() {
    setState(() => _contador++);
  }
  void resta() {
    setState(() => _contador--);
  }
  void cero() {
    setState(() => _contador=0);
  }
  void mas2() {
    setState(() => _contador=_contador+2);
  }
  void menos2() {
    setState(() => _contador=_contador-2);
  }
}
