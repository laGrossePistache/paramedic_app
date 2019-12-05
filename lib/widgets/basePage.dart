import 'package:flutter/material.dart';
import 'package:paramedic_app/pages/homePage.dart';

import '../constant.dart';
import 'homePage/favorites/favoriteSetButton.dart';

class BasePage extends StatelessWidget {
  final String title;
  final List<Widget> children;

  BasePage({this.title, this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomePage.id);
          },
        ),
        title: Text(
          title,
          style: kAppBarTitleTextStyle,
        ),
        actions: <Widget>[FavoriteSetButton()],
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('images/backgroundApp.jpg'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: ListView( 
            children: children
          ),
        ),
      ),
    );
  }
}

