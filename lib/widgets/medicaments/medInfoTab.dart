import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:provider/provider.dart';

MedicamentData medicamentData;

class MedInfoTab extends StatelessWidget {
  List<Widget> generateDescription() {
    List<Widget> widgetsList = [];
    List<String> descriptions =
        medicamentData.medicamentDataMap['descriptions'];
    for (var i = 0; i < descriptions.length; i++) {
      widgetsList.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        child: Text(descriptions[i]),
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
              medicamentData.medicamentDataMap['name'][0],
              style: kTitleTextStyleTab,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: generateDescription(),
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
