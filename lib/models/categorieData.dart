import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/pages/medPage.dart';

class CategorieData {
  List<Map<String, String>> _categorieDataMapList = [{}];

  List<Map<String, String>> get categorieDataList {
    return _categorieDataMapList;
  }
}

class CategorieDataMeds extends CategorieData {
  @override
  List<Map<String, String>> _categorieDataMapList = [
    {
      'name': 'Salbutamol - Med.8: Dyspnée',
      'page': MedPage.id,
      'content': ContentParamedic.salbutamol.toString()
    },
    {
      'name': 'NTG - Med.8.A: Dyspnée cardiaque probable',
      'page': MedPage.id,
      'content': ContentParamedic.ntg8A.toString()
    },
    {
      'name': 'Nalaxone - Med.12: Intoxication aux opioïdes',
      'page': MedPage.id,
      'content': ContentParamedic.nalaxone.toString()
    },
    {
      'name': 'AAS - Med.10: Douleur thoracique',
      'page': MedPage.id,
      'content': ContentParamedic.aspirine.toString()
    },
    {
      'name': 'NTG - Med.10: Douleur thoracique',
      'page': MedPage.id,
      'content': ContentParamedic.ntg.toString()
    },
    {
      'name': 'Glucagon - Med.16: Hypoglycémie',
      'page': MedPage.id,
      'content': ContentParamedic.glucagon.toString()
    },
    {
      'name': 'Épinéphrine - Med.17: Anaphylaxie',
      'page': MedPage.id,
      'content': ContentParamedic.epinephrine.toString()
    },
  ];
}
