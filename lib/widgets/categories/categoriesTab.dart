import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/models/categorieDataRetriever.dart';
import 'package:paramedic_app/widgets/categories/categorieButton.dart';

class CategoriesTab extends StatelessWidget {
  final CategorieDataRetriever categoriesDataRetriever = CategorieDataRetriever();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            child: GridView.count(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 15.0,
              children: <Widget>[
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.medkit,
                  title: 'Médicaments',
                  description: 'AAS, NTG, Glucagon, Epi, Salbutamol, Nalaxone',
                  categorieData: categoriesDataRetriever.getCategorieDataMedicaments,
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.bone,
                  title: 'Traumatologie',
                  description: 'Immobilisation, EQTP ..',
                  categorieData: categoriesDataRetriever.getCategorieDataMedicaments,
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.wind,
                  title: 'Oxygènothéraphie',
                  description: 'Tech.10, Oxylator, Valve de boussignac..',
                  categorieData: categoriesDataRetriever.getCategorieDataMedicaments,
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.heartBroken,
                  title: 'Réanimation',
                  description:
                      'Réanimation, Arrêts des manoeuvres, prise en charge avec DEA..',
                  categorieData: categoriesDataRetriever.getCategorieDataMedicaments,
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.bookReader,
                  title: 'Éch. d\'évaluation',
                  description: 'Glasgow, EQTPT, APGAR..',
                  categorieData: categoriesDataRetriever.getCategorieDataMedicaments,
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.chalkboardTeacher,
                  title: 'Techniques',
                  description: 'Combitube, Oxylator, Valve de boussignac..',
                  categorieData: categoriesDataRetriever.getCategorieDataMedicaments,
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
