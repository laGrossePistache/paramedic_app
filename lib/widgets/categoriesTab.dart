import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/models/categorieData.dart';
import 'package:paramedic_app/widgets/categorieButton.dart';

class CategoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            child: GridView.count(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 15.0,
              children: <Widget>[
                CategorieButton(
                  colorsNegative: true,
                  icon: FontAwesomeIcons.medkit,
                  title: 'Médicaments',
                  description: 'AAS, NTG, Glucagon, Epi, Salbutamol, Nalaxone',
                  categorieData: CategorieDataMeds(),
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.bone,
                  title: 'Traumatologie',
                  description: 'Immobilisation, EQTP ..',
                  categorieData: CategorieData(),
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.wind,
                  title: 'Oxygènothéraphie',
                  description: 'Tech.10, Oxylator, Valve de boussignac..',
                  categorieData: CategorieData(),
                ),
                CategorieButton(
                  colorsNegative: true,
                  icon: FontAwesomeIcons.heartBroken,
                  title: 'Réanimation',
                  description:
                      'Réanimation, Arrêts des manoeuvres, prise en charge avec DEA..',
                  categorieData: CategorieData(),
                ),
                CategorieButton(
                  colorsNegative: true,
                  icon: FontAwesomeIcons.bookReader,
                  title: 'Éch. d\'évaluation',
                  description: 'Glasgow, EQTPT, APGAR..',
                  categorieData: CategorieData(),
                ),
                CategorieButton(
                  colorsNegative: false,
                  icon: FontAwesomeIcons.chalkboardTeacher,
                  title: 'Techniques',
                  description: 'Combitube, Oxylator, Valve de boussignac..',
                  categorieData: CategorieData(),
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
