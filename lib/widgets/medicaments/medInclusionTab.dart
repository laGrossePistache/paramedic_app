import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'MedButtonCritere.dart';

class MedInclusionTab extends StatelessWidget {
  final List<String> inclusions;
  MedInclusionTab({this.inclusions});

  List<Widget> generateMedButton() {
    List<Widget> criteresList = [];
    for (String critere in inclusions) {
      criteresList.add(
        MedButtonCritere(
          name: critere,
        ),
      );
    }
    return criteresList;
  }

  @override
  Widget build(BuildContext context) {
    // bool isChecked = false; // TODO: Si est cocher, devrait être cocher
    print(inclusions.length);
    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 20.0),
          children: <Widget>[
            Text(
              'Critères d\'inclusion',
              textAlign: TextAlign.center,
              style: kTitleTextStyle,
            ),
            SizedBox(
              height: 8.0,
            ),
            Column(children: generateMedButton())
          ],
        ),
      ),
    );
  }
}
