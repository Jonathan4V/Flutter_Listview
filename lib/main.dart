import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
// Quitamos debug
      debugShowCheckedModeBanner: false,
      initialRoute: "/listview2",
      routes: {
        "/listview1": (BuildContext context) => ListView1(),
        "/listview2": (BuildContext context) => ListView2(),
      },
//Configuracion tema
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.blue,
//Configurar texto
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.pink, fontSize: 30))),
    );
  }
}
