import 'package:flutter/material.dart';

import 'package:prueba/src/pages/billetera_page.dart';
import 'package:prueba/src/pages/formulario_page.dart';
//import 'package:prueba/src/pages/botones_page.dart';
//import 'package:prueba/src/pages/home_page.dart';
import 'package:prueba/src/pages/mapa_page.dart';
import 'package:prueba/src/pages/secondFormPage_page.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPage(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'formulario_dos' : (BuildContext context) => SecondFormPage(),
  };
}
