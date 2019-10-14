import 'package:paramedic_app/pages/medPage.dart';

class CategorieData {
  final Map<String, String> _categorieDataMap = {};

  Map<String, String> get getDataMap {
    return _categorieDataMap;
  }
}

class CategorieDataMeds extends CategorieData {
  final Map<String, String> _categorieDataMap = {
    'Salbutamol - Med.8: Dyspnée': MedPage.id,
    'NTG - Med.8.A: Dyspnée cardiaque probable': MedPage.id,
    'Nalaxone - Med.12: Intoxication aux opioïdes' : MedPage.id,
    'AAS - Med.10: Douleur thoracique': MedPage.id,
    'NTG - Med.10: Douleur thoracique': MedPage.id,
    'Glucagon - Med.16: Hypoglycémie' : MedPage.id,
    'Épinéphrine - Med.17: Anaphylaxie' : MedPage.id,
  };
}
