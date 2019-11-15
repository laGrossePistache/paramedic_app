import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/widgets/basePage.dart';
import 'package:paramedic_app/widgets/contentCard.dart';

class OxylatorPage extends StatelessWidget {
  static const id = 'oxylatorPage';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Oxylator',
      children: <Widget>[
        SizedBox(
          height: spaceBetweenContentCard,
        ),
        ContentCard(
          titleWidget: 'Critères d\'inclusion à l\'Oxylator',
          contentWidget: <Widget>[
            Text(
              '- Patient de > 25 kg',
            ),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text(
                '- Patient nécessitant une assitance ventilatoire (ou respiratoire si échec à la C-PAP)')
          ],
        ),
        SizedBox(
          height: spaceBetweenContentCard,
        ),
        ContentCard(
          titleWidget: 'Critères d\'exclusion mode automatique (PEEP)',
          contentWidget: <Widget>[
            Text(
              '- Hypotension (TAsys < 100mmHg)',
            ),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text(
              '- Asthme décompensé < 40 ans',
            ),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- Trauma crânien'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- ACR'),
          ],
        ),
        SizedBox(
          height: spaceBetweenContentCard,
        ),
        ContentCard(
          titleWidget: 'Mode Automatique',
          backgroundTitleColor: kColorAppBar,
          titleTextColor: kColorBackground,
          contentWidget: <Widget>[
            Text(
                'Augmenté de 5cm H2O jusqu\'à un temps inspiratoire de 1 seconde minimum, jusqu\'à soulèvement du thorax (ne pas excéder 35cm H2O)'),
          ],
        ),
        SizedBox(
          height: spaceBetweenContentCard,
        ),
        ContentCard(
          titleWidget: 'Mode Manuel',
          backgroundTitleColor: kColorAppBar,
          titleTextColor: kColorBackground,
          contentWidget: <Widget>[
            Text('- Adulte: ventiler aux 5 à 6 sec (10-12 /min'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- Ped: ventiler aux 3 à 5 sec (12-20 /min)'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- ACR avec combitube: ventiler aux 6 sec (10/min)'),
          ],
        ),
        SizedBox(
          height: spaceBetweenContentCard,
        ),
        ContentCard(
          titleWidget: 'Attention!',
          backgroundTitleColor: Colors.red,
          titleTextColor: Colors.white,
          contentWidget: <Widget>[
            Text('** Ne pas installer les courroies élastiques au masque relié à l\'Oxylator, celui-ci doit être maintenu à l\'aide des mains afin d\'exercer une surveillance constance de la perméabilité des voies respiratoires.'),
          ],
        )
      ],
    );
  }
}
