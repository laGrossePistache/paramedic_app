import 'package:flutter/material.dart';
import 'pages/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paramédic App',
      theme: ThemeData(
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id : (context) => HomePage(),
      },
    );
  }
}
