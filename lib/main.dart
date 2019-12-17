import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/pages/cincinnatiPage.dart';
import 'package:paramedic_app/pages/cpapPage.dart';
import 'package:paramedic_app/pages/eqtptPage.dart';
import 'package:paramedic_app/pages/oxylatorPage.dart';
import 'package:paramedic_app/pages/tech10Page.dart';
import 'models/globalData.dart';
import 'pages/homePage.dart';
import 'pages/medPage.dart';
import 'package:provider/provider.dart';

void main() {
    runApp(MyApp());
    // TODO: Fix screen's rotation on phone
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // builder: (context) => GlobalData(),
      create: (context) => GlobalData(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
            actionsIconTheme: IconThemeData(color: kColorBackground),
            color: kColorAppBar,
            elevation: 10.0,
            iconTheme: IconThemeData(color: Color(0xffF9F622)),
            textTheme: TextTheme(
              title: TextStyle(
                  color: Color(0xffF9F622),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Paramédic App',
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          MedPage.id: (context) => MedPage(),
          Tech10Page.id: (context) => Tech10Page(),
          OxylatorPage.id: (context) => OxylatorPage(),
          CpapPage.id: (context) => CpapPage(),
          CincinnatiPage.id: (context) => CincinnatiPage(),
          EqtptPage.id: (context) =>  EqtptPage(),
        },
      ),
    );
  }
}
