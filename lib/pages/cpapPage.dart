import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/widgets/basePage.dart';
import 'package:paramedic_app/widgets/contentCard.dart';

class CpapPage extends StatelessWidget {
  static const id = 'cpapPage';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'C-PAP - Valve de boussignac',
      children: <Widget>[
        SizedBox(
          height: spaceBetweenContentCard,
        ),
        ContentCard(
          titleWidget: 'Critères d\'exclusion',
          contentWidget: <Widget>[
            Text('- Age < 18 ans'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- Apnée ou hypoventilation (respiration ≤ 10)'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- Voies aériennes non-perméables (ex. vomissements)'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- Hypotension (TAsys < 100 mmHg)'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- P ou U'),
            SizedBox(
              height: spaceBetweenContentItem,
            ),
            Text('- Trauma crânien')
          ],
        ),
        SizedBox(
          height: spaceBetweenContentCard,
        ),
        ContentCard(
          titleWidget: 'Débit / Litre par minute',
          backgroundTitleColor: kColorAppBar,
          titleTextColor: kColorBackground,
          contentWidget: <Widget>[
            DataTable(
              columns: [
                DataColumn(
                  label: Text('Débit/Litre par minute'),
                ),
                DataColumn(label: Text('C-PAP en cmH2O'))
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('10')),
                    DataCell(
                      Text('2,5 - 3,0'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('15')),
                    DataCell(
                      Text('4,5 - 5,0'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('20')),
                    DataCell(
                      Text('7,0 - 8,0'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('25')),
                    DataCell(
                      Text('8.5 - 10,0'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('> 25')),
                    DataCell(
                      Text('> 10,0'),
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
