import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:paramedic_app/widgets/homePage/favorites/favoriteSetButton.dart';
import 'package:provider/provider.dart';

import '../constant.dart';
import 'homePage.dart';

class Tech10 extends StatelessWidget {
  static const id = 'tech10';

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
          'Tech.10 - O2/Sat',
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
          child: Container(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'O2 à haute concentration - 100%',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'si protocole suivant appliqué:',
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Divider(
                          color: kColorAppBar,
                          height: 20,
                          thickness: 0.8,
                        ),
                      ),
                      Text('IND.2, IND.3, ENV.1, ENV.2, ENV.6, ENV.7'),
                      Text('REA.1, REA.3, REA.5, REA.6, REA.7'),
                      Text('MED.2, MED.5, MED.7, MED.17'),
                      Text('PED.1 à 5'),
                      Text('OBS.2, OBS.4, OBS.5, OBS.6, TRAU.2, TRAU.5')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
