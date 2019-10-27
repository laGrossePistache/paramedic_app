import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:paramedic_app/widgets/favorites/favoriteSetButton.dart';
import 'package:paramedic_app/widgets/medicaments/medAdministrationTab.dart';
import 'package:paramedic_app/widgets/medicaments/medExclusionTab.dart';
import 'package:paramedic_app/widgets/medicaments/medInclusionTab.dart';
import 'package:paramedic_app/widgets/medicaments/medInfoTab.dart';
import 'package:provider/provider.dart';

import 'homePage.dart';

MedicamentData currentMedicamentData;

class MedPage extends StatelessWidget {
  static const id = 'medPage';

  void setCurrentMedicamentData(ContentParamedic content) {
    if (content == ContentParamedic.salbutamol) {
      currentMedicamentData = MedicamentDataSalbutamol();
    }
  }

  bool checkCriteria() {

    bool isInclusionOkay = false;
    for (bool item in currentMedicamentData.criteresInclusion) {
      if (item == true) isInclusionOkay = true;
    }
    bool isExclusionOkay = true;
    for (bool item in currentMedicamentData.criteresExclusion) {
      if (item == false) isExclusionOkay = false;
    }
    bool isDosageOkay = false;
    for (bool item in currentMedicamentData.dosages) {
      if (item == true) isDosageOkay = true;
    }
    return (isInclusionOkay && isExclusionOkay & isDosageOkay) ? true : false;
  }

  Future<void> _askedToLead(BuildContext context) async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text(
              'Attention !',
              textAlign: TextAlign.center,
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                child: Text(
                    'Voulez-vous administrer le médicament malgré les critères manquants?'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'oui');
                },
                child: Text(
                  'Oui',
                  textAlign: TextAlign.center,
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'non');
                },
                child: Text(
                  'Non',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        })) {
      case 'oui':
        showFlushBar(context);
        currentMedicamentData.resetMedState();
        break;
      case 'non':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    setCurrentMedicamentData(
        Provider.of<GlobalData>(context).currentCategorie.content);
    return ChangeNotifierProvider.value(
      value: currentMedicamentData,
      child: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(
              FontAwesomeIcons.handHoldingHeart,
              color: Colors.blue[800],
              size: 20.0,
            ),
            backgroundColor: Colors.yellow,
            onPressed: () async {
              if (!checkCriteria()) {
                await _askedToLead(context);
              } else {
                //TODO; add time  to list for last med
                currentMedicamentData.resetMedState();
                showFlushBar(context);
              }
            },
          ),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () => Navigator.pushNamed(context, HomePage.id),
            ),
            title: Text(
              currentMedicamentData.medicamentDataMap['name'][0],
              style: kAppBarTitleTextStyle,
            ),
            actions: <Widget>[FavoriteSetButton()],
            bottom: TabBar(
              indicatorColor: Colors.yellow,
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(FontAwesomeIcons.info),
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.solidCheckCircle),
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.solidTimesCircle),
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.syringe),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              MedInfoTab(),
              MedInclusionTab(),
              MedExclusionTab(),
              MedAdministrationTab(),
            ],
          ),
        ),
      ),
    );
  }

  void showFlushBar(BuildContext context) {
    Flushbar(
      message: 'Le médicament administré à: ',
      // Ajouter a la liste des med administré
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(8),
      borderRadius: 8,
      icon: Icon(
        FontAwesomeIcons.calendarTimes,
        size: 20.0,
        color: Colors.yellow,
      ),
    )..show(context);
  }
}
