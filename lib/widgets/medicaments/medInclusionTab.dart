import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:paramedic_app/widgets/contentCard.dart';
import 'package:paramedic_app/widgets/medicaments/medCheckButton.dart';
import 'package:provider/provider.dart';
import 'medButtonCritere.dart';

MedicamentData medicamentData;

class MedInclusionTab extends StatelessWidget {
  List<Widget> generateMedButton() {
    List<Widget> widgetsList = [];
    List<bool> criteresInclusion = medicamentData.criteresInclusion;
    for (var i = 0; i < criteresInclusion.length; i++) {
      widgetsList.add(MedButtonCritere(
        name: medicamentData.medicamentDataMap['inclusion'][i],
        isCheck: criteresInclusion[i],
        onTap: () {
          medicamentData.setCriteresInclusion(
              i, !medicamentData.criteresInclusion[i]);
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
              'Dosages (${medicamentData.medicamentDataMap['inclusion'].length})',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            ContentCard(
              titleWidget:
                  'Généralité',
              contentWidget: <Widget>[
                Text(
                  medicamentData.medicamentDataMap['absolu'][0],
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
              height: 8.0,
            ),
            MedCheckButton(
              onPressed: () {
                for (var i = 0;
                    i < medicamentData.medicamentDataMap['inclusion'].length;
                    i++) {
                  medicamentData.setCriteresInclusion(i, true);
                }
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Column(children: generateMedButton()),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
            )
          ],
        ),
      ),
    );
  }
}
