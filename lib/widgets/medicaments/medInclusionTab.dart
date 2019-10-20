import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:provider/provider.dart';
import 'medButtonCritere.dart';

  MedicamentData medicamentData;
class MedInclusionTab extends StatelessWidget {

  List<Widget> generateMedButton() {
    List<Widget> widgetsList = [];
    List<bool> criteresInclusion = medicamentData.criteresInclusion;
    for (var i = 0; i < criteresInclusion.length; i++) {
      widgetsList.add(
      MedButtonCritere(
        name: medicamentData.medicamentDataMap['inclusion'][i],
        isCheck: criteresInclusion[i],
        onTap: () {
          medicamentData.setCriteresInclusion(i, !medicamentData.criteresInclusion[i]);
        },
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
              'Critères d\'inclusion (${medicamentData.medicamentDataMap['inclusion'].length})',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(medicamentData.medicamentDataMap['absolu'][0], textAlign: TextAlign.center,),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(thickness: 2,),
            ),
            Column(children: generateMedButton())
          ],
        ),
      ),
    );
  }
}
