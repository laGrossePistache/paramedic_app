import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/widgets/categories/categoriesTab.dart';
import 'package:paramedic_app/widgets/favorites/favoritesTab.dart';

class ExamplePage extends StatefulWidget {
  static const id = 'examplePage';

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [            Icon(FontAwesomeIcons.home),
            CategoriesTab(),
            FavoritesTab(),
            Icon(FontAwesomeIcons.solidUser),];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.heartbeat,
                    color: Colors.yellow,
                  ),
                  onPressed: () {
                    // Do something
                  }),
              // expandedHeight: 220.0,
              floating: true,
              pinned: false,
              snap: false,
              elevation: 50,
              backgroundColor: Colors.blue[800],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Paramédic App',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16.0,
                    )),
              ),
            ),
            // SliverList(delegate: SliverChildListDelegate(_children),)
            SliverList(delegate: new SliverChildListDelegate(_buildList(_currentIndex))),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: onTapNav,
          elevation: 100,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.grey[200],
              icon: Icon(FontAwesomeIcons.home),
              title: Text('Accueil'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookMedical),
              title: Text('Catégories'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidHeart),
              title: Text('Favories'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser),
              title: Text('Profile'),
            )
          ],
        ),
      ),
    );
  }

  void onTapNav(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}
