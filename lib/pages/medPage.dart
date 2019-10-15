import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:paramedic_app/widgets/medicaments/medInclusionTab.dart';
import 'package:provider/provider.dart';

MedicamentData currentMedicamentData;

class MedPage extends StatelessWidget {
  static const id = 'medPage';

  void setCurrentMedicamentData(String content){
    if(content == ContentParamedic.salbutamol.toString()){
      currentMedicamentData = MedicamentDataSalbutamol();
    }
  }

  @override
  Widget build(BuildContext context) {
    setCurrentMedicamentData(Provider.of<GlobalData>(context).currentContent);
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton( 
          onPressed: () {
            // TODO MedPage - Function de validation
          },
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.blue[800],
          title: Text(
            'Médicaments', //TODO: Devrait afficher le médicaments présentement sélectionner
            style: kAppBarTitleTextStyle,
          ),
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
            Icon(FontAwesomeIcons.info),
            MedInclusionTab(inclusions: currentMedicamentData.getListValue('inclusion'),),
            Icon(FontAwesomeIcons.solidTimesCircle),
            Icon(FontAwesomeIcons.syringe),
          ],
        ),
      ),
    );
  }
}
