import 'package:flutter/material.dart';
import 'package:primera_aplicacion/src/pages/home_page.dart';

import 'pages/contador_page.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      home: ContadorPage()
      
    );
  }
}