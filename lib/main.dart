import 'package:app/pages/auth_ui.dart';
import 'package:app/pages/foodList_ui.dart';
import 'package:app/pages/register_ui.dart';
import 'package:app/pages/cart_ui.dart';
import 'package:flutter/material.dart';
import 'pages/login_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feira',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: {
        '/auth': (context) => AuthPage(),
        '/register': (context) => RegisterPage(),
        '/lista': (context) => ListaAlimentos(),
        '/carrinho': (context) => SacolaPage(),
        '/ladingpage': (context)=> LoginPage()
      },
    );
  }
}
