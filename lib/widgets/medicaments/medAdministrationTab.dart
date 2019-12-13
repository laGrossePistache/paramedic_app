import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:paramedic_app/widgets/contentCard.dart';
import 'package:provider/provider.dart';
import 'medButtonCritere.dart';

MedicamentData medicamentData;

class MedAdministrationTab extends StatelessWidget {
  List<Widget> generateMedButton() {
    List<Widget> widgetsList = [];
    List<bool> dosagesPoss = medicamentData.dosages;
    for (var i = 0; i < dosagesPoss.length; i++) {
      widgetsList.add(MedButtonCritere(
        name: medicamentData.medicamentDataMap['dosage'][i],
        isCheck: dosagesPoss[i],
        onTap: () {
          medicamentData.chooseDosage(i);
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
              'Dosages (${medicamentData.medicamentDataMap['dosage'].length})',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            SizedBox(
              height: 15.0,
            ),
            ContentCard(
              titleWidget: 'Méthode d\'administration',
              backgroundTitleColor: kColorAppBar,
              titleTextColor: kColorBackground,
              contentWidget: <Widget>[
                Text(
                  medicamentData.medicamentDataMap['administration'][0],
                  textAlign: TextAlign.center,
                ),
              ],
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
            SizedBox(height: 5),
            ContentCard(
              titleWidget: 'Répétitions',
              titleTextColor: kColorAppBar,
              backgroundTitleColor: kColorBackground,
              contentWidget: <Widget>[
                Text(
                  medicamentData.medicamentDataMap['repetition'][0],
                  textAlign: TextAlign.left,
                ),
              ],
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
