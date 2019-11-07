import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/categorieDataRetriever.dart';
import 'package:paramedic_app/widgets/homePage/categories/categorieButton.dart';

class CategoriesTab extends StatelessWidget {
  final CategorieDataRetriever categoriesDataRetriever =
      CategorieDataRetriever();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 20.0),
          children: <Widget>[
            Text(
              'Catégories',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CategorieButton(
                  icon: FontAwesomeIcons.medkit,
                  title: 'Médicaments',
                  description:
                      'Aspirine, Nitroglycérine, Salbutamol, Épinéphrine, Glucagon',
                  categorieData:
                      categoriesDataRetriever.getCategorieDataMedicaments,
                ),
                CategorieButton(
                  icon: FontAwesomeIcons.medkit,
                  title: 'Oxygénothérapie',
                  description:
                      'Tech.10, Oxlylator, CPAP, Combitube',
                  categorieData:
                      categoriesDataRetriever.getCategorieOxygenotheraphie,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
