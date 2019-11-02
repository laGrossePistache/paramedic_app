import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:provider/provider.dart';
import 'medButtonCritere.dart';
import 'medCheckButton.dart';

MedicamentData medicamentData;

class MedExclusionTab extends StatelessWidget {
  List<Widget> generateMedButton() {
    List<Widget> widgetsList = [];
    List<bool> criteresExclusion = medicamentData.criteresExclusion;
    for (var i = 0; i < criteresExclusion.length; i++) {
      widgetsList.add(MedButtonCritere(
        name: medicamentData.medicamentDataMap['exclusion'][i],
        isCheck: criteresExclusion[i],
        onTap: () {
          medicamentData.setCriteresExclusion(
              i, !medicamentData.criteresExclusion[i]);
        },
      ));
    }
    return widgetsList;
  }

  List<Widget> generateExceptionText() {
    List<Widget> widgetsList = [];
    List<String> exception = medicamentData.medicamentDataMap['exception'];
    for (var i = 0; i < exception.length; i++) {
      widgetsList.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        child: Text('- ${exception[i]}'),
      ));
    }
    return widgetsList;
  }

  @override
  Widget build(BuildContext context) {
    medicamentData = Provider.of<MedicamentData>(context);
    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 20.0),
          children: <Widget>[
            Text(
              'Critères d\'exclusion (${medicamentData.medicamentDataMap['exclusion'].length})',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            SizedBox(
              height: 15.0,
            ),
            MedCheckButton(
              onPressed: () {
                for (var i = 0;
                    i < medicamentData.medicamentDataMap['exclusion'].length;
                    i++) {
                  medicamentData.setCriteresExclusion(i, true);
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Cocher les critères qui ont été vérifiés:',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Column(children: generateMedButton()),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Column(
              children: generateExceptionText(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
            )
          ],
        ),
      ),
    );
  }
}
