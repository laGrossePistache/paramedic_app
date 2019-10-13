import 'package:flutter/material.dart';
import 'package:paramedic_app/widgets/categorieCard.dart';

class CategoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
      child: Column(
        children: <Widget>[
          Text(
            'Catégories',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black45),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 8.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: <Widget>[
                GridTile(
                  header: Text('Hello'),
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                                GridTile(
                  header: Text('Hello'),
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                                GridTile(
                  header: Text('Hello'),
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                CategorieCard()
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

//   child: Column(
//     children: <Widget>[

//       ListView(
//         children: <Widget>[
//           ListTile(title: Text('Hello'),)
//           // CategorieCard(),
//         ],
//       ),
//     ],
//   ),
// ),
