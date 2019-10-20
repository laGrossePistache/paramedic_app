import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/categorieDataRetriever.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:paramedic_app/widgets/favorites/favoritesButton.dart';
import 'package:provider/provider.dart';

class FavoritesTab extends StatelessWidget {
  List<Widget> generateFavButton(BuildContext context) {
    List<Widget> widgetsList = [];
    List<CategorieData> categoriesFav =
        Provider.of<GlobalData>(context).favoritesCategories;
    for (var i = 0; i < categoriesFav.length; i++) {
      widgetsList.add(
        FavoritesButton(
          title: categoriesFav[i].name,
          colorsNegative: false,
          onPressed: () {
            Provider.of<GlobalData>(context).currentCategorie =
                categoriesFav[i];
            Navigator.pop(context);
            Navigator.pushNamed(context, categoriesFav[i].page);
          },
        ),
      );
    }
    return widgetsList;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 20.0),
          children: <Widget>[
            Text(
              'Favoris',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Column(children: generateFavButton(context))
          ],
        ),
      ),
    );
  }
}
