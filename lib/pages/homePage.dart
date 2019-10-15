import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/widgets/categories/categoriesTab.dart';

class HomePage extends StatelessWidget {
  static const id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(FontAwesomeIcons.heartbeat),
          backgroundColor: Colors.blue[800],
          title: Text(
            'Paramédic App',
            style: kAppBarTitleTextStyle,
          ),
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.home),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.bookMedical),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.user),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(FontAwesomeIcons.home),
            CategoriesTab(),
            Icon(FontAwesomeIcons.user),
          ],
        ),
      ),
    );
  }
}
