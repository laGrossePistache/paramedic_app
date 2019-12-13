import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/widgets/eqtptPage/eqtptChTab.dart';
import 'package:paramedic_app/widgets/eqtptPage/eqtptTab.dart';
import 'package:paramedic_app/widgets/homePage/favorites/favoriteSetButton.dart';
import 'homePage.dart';

class EqtptPage extends StatefulWidget {
  static const id = 'eqtptPage';

  @override
  _EqtptPage createState() => _EqtptPage();
}

@override
class _EqtptPage extends State<EqtptPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [EqtptTab(), EqtptChTab()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
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
            'EQTPT',
            style: kAppBarTitleTextStyle,
          ),
          actions: <Widget>[FavoriteSetButton()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: onTapNav,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.list),
              title: Text('L\'échelle'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.map),
              title: Text('La carte'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.hospital),
              title: Text('Centre hospitalier'),
            ),
          ],
        ),
        body: DecoratedBox(
          child: _children.elementAt(_currentIndex),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('images/backgroundApp.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }

  void onTapNav(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
