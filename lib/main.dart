import 'package:flutter/material.dart';
import 'models/globalData.dart';
import 'pages/homePage.dart';
import 'pages/medPage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => GlobalData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Paramédic App',
        theme: ThemeData(),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          MedPage.id: (context) => MedPage()
        },
      ),
    );
  }
}
