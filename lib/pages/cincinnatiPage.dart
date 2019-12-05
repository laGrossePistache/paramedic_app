import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/widgets/basePage.dart';
import 'package:paramedic_app/widgets/contentCard.dart';

class CincinnatiPage extends StatefulWidget {
  static const id = 'cincinnatiPage';

  @override
  _CincinnatiPageState createState() => _CincinnatiPageState();
}

class _CincinnatiPageState extends State<CincinnatiPage> {
  bool affaissementFacial = false;
  bool affaissementBras = false;
  bool discourtInadequat = false;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Échelle de Cincinnati - Dépistage AVC',
      children: <Widget>[
        ContentCard(
          titleWidget: 'Échelle de Cincinnati',
          contentWidget: <Widget>[
            CincinnatiCheckCard(
              title: 'Affaissement du visage',
              isChecked: affaissementFacial,
              subtitle:
                  'Un des deux côtés ne bouge pas ou semble affaissé lors du sourire',
              onTap: () {
                switchFacial();
              },
              onChanged: (boolean) {
                switchFacial();
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            CincinnatiCheckCard(
              title: 'Affaissement d\'un bras',
              isChecked: affaissementBras,
              subtitle: 'Un des bras ne tient pas en position et descend',
              onTap: () {
                switchBras();
              },
              onChanged: (boolean) {
                switchBras();
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            CincinnatiCheckCard(
              title: 'Parole / Discourt inadéquats',
              isChecked: discourtInadequat,
              subtitle:
                  'Incapacité à bien prononcer "Le ciel est bleu à Cincinnati"',
              onTap: () {
                switchDiscourt();
              },
              onChanged: (boolean) {
                switchDiscourt();
              },
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Résultat',
                style: kSubTitleTextStyleTab,
              ),
            ),
            Center(
              child: Text(getCincinnati()),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Si résultat de 1/3 ou plus, considéré comme AVC probable',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        ContentCard(
          titleWidget: 'Si AVC probable',
          backgroundTitleColor: Colors.red,
          titleTextColor: Colors.white,
          contentWidget: <Widget>[
            Text(
              'Patient candidat à la reperfusion cérébrale si tous les critères suivants sont présents: ',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Text('- Âge ≥ 16 ans \n- A ou V sur l\'échelle de conscience\n-Délais d\'arrivée au CH < 3.5h après le début des symptômes ')
          ],
        )
      ],
    );
  }

  void switchFacial() {
    setState(() {
      affaissementFacial = !affaissementFacial;
    });
  }

  void switchBras() {
    setState(() {
      affaissementBras = !affaissementBras;
    });
  }

  void switchDiscourt() {
    setState(() {
      discourtInadequat = !discourtInadequat;
    });
  }

  String getCincinnati() {
    int value = 0;
    if (affaissementBras) value += 1;
    if (affaissementFacial) value += 1;
    if (discourtInadequat) value += 1;
    return '$value / 3';
  }
}

class CincinnatiCheckCard extends StatelessWidget {
  final bool isChecked;
  final String title;
  final String subtitle;
  final Function onTap;
  final Function(bool) onChanged;

  CincinnatiCheckCard(
      {this.title, this.subtitle, this.isChecked, this.onTap, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          children: <Widget>[
            ListTile(
              onTap: onTap,
              leading: Checkbox(
                checkColor: kColorBackground,
                activeColor: kColorAppBar,
                value: isChecked,
                onChanged: onChanged,
              ),
              title: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(subtitle),
            )
          ],
        ),
      ),
    );
  }
}
