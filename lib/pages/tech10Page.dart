import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/widgets/basePage.dart';
import 'package:paramedic_app/widgets/contentCard.dart';

import '../constant.dart';

class Tech10Page extends StatelessWidget {
  final double spaceBetweenContent = 10.0;
  static const id = 'tech10Page';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Tech.10 - O2 et saturation',
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        ContentCard(
          id: '1',
          titleWidget: 'O2 100% si un des protocoles suivants est appliqué:',
          contentWidget: <Widget>[
            Text('IND.2, IND.3, ENV.1, ENV.2, ENV.6, ENV.7'),
            Text('REA.1, REA.3, REA.5, REA.6, REA.7'),
            Text('MED.2, MED.5, MED.7, MED.17'),
            Text('PED.1 à 5'),
            Text('OBS.2, OBS.4, OBS.5, OBS.6, TRAU.2, TRAU.5')
          ],
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        Icon(
          FontAwesomeIcons.solidArrowAltCircleDown,
          color: kColorAppBar,
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        ContentCard(
          id: '2',
          titleWidget: 'Si protocole demande un supplément d\'oxygène:',
          contentWidget: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('SpO2 ≥ 94%'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Text(
                          'Aucune Oxygène supplémentaire, \n Sauf si dyspnée, administrer oxygène à 4l/min'),
                    )
                  ],
                ),
                SizedBox(
                  height: spaceBetweenContent,
                ),
                Row(
                  children: <Widget>[
                    Text('SpO2 < 94%'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Text(
                          'Administrer oxygène, viser entre 94% et 96% SpO2'),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        Icon(
          FontAwesomeIcons.solidArrowAltCircleDown,
          color: kColorAppBar,
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        ContentCard(
          id: '3',
          titleWidget: 'Patient adulte TRAUMA:',
          contentWidget: <Widget>[
            Text(
              'Instable, potentiellement instable et femme enceinte:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Oxyène 100% (Sans saturation)'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Stable:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Selon saturation lorsque saturométrie disponible \n(Voir encadré #2 juste au-dessus)',
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        Icon(
          FontAwesomeIcons.solidArrowAltCircleDown,
          color: kColorAppBar,
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        ContentCard(
          id: '4',
          titleWidget: 'Patient réanimé post ACR:',
          contentWidget: <Widget>[
            Text(
              'Alerte ou Verbal',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Oxyène 100% (Sans saturation)'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Stable:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Selon saturation lorsque saturométrie disponible \n(Voir encadré #2 au-dessus)',
              textAlign: TextAlign.center,
            )
          ],
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        Icon(
          FontAwesomeIcons.solidArrowAltCircleDown,
          color: kColorAppBar,
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        ContentCard(
          id: '5',
          titleWidget: 'Patient MPOC - Non O2 dépendant',
          contentWidget: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('SpO2 ≥ 94%'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Text(
                          'Aucune oxygène supplémentaire, \n Si dyspnée augmentée, administrer oxygène à 2l/min'),
                    )
                  ],
                ),
                SizedBox(
                  height: spaceBetweenContent,
                ),
                Row(
                  children: <Widget>[
                    Text('SpO2 < 94%'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Text(
                          'Administrer oxygène au débit minumum possible et viser 94% '),
                    )
                  ],
                ),
                SizedBox(
                  height: spaceBetweenContent,
                ),
                Text('Si DTOCP ou AVC, oxygène au besoin et viser 94%')
              ],
            ),
          ],
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        Icon(
          FontAwesomeIcons.solidArrowAltCircleDown,
          color: kColorAppBar,
        ),
        SizedBox(
          height: spaceBetweenContent,
        ),
        ContentCard(
          titleWidget: 'Patient MPOC - O2 dépendant',
          id: '6',
          contentWidget: <Widget>[
            Text(
              'Aucune dyspnée augmentée:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('- Maintenir débit O2 déjà en place'),
            SizedBox(
              height: spaceBetweenContent,
            ),
            Text(
              'Dyspnée augmentée:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Administrer au débit minimum possible pour confort sans dépasser 94%',
              textAlign: TextAlign.center,
            )
          ],
        )
      ],
    );
  }
}
