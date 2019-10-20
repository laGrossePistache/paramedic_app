import 'package:flutter/material.dart';
import 'models/globalData.dart';
import 'pages/homePage.dart';
import 'pages/medPage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => GlobalData(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
            actionsIconTheme: IconThemeData(color: Colors.yellow),
            color: Colors.blue[800],
            elevation: 10.0,
            iconTheme: IconThemeData(color: Colors.yellow),
            textTheme: TextTheme(
              title: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Paramédic App',
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          MedPage.id: (context) => MedPage()
        },
      ),
    );
  }
}
