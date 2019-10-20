import 'package:paramedic_app/pages/medPage.dart';
import '../constant.dart';

class CategorieData {
  final String name;
  final String page;
  final ContentParamedic content;

  CategorieData({this.name, this.page, this.content});
}

class CategorieDataRetriever {
    final List<CategorieData> _medicamentsDatas = [
    CategorieData(
        name: 'Salbutamol - Med.8: Dyspnée',
        page: MedPage.id,
        content: ContentParamedic.salbutamol),
    CategorieData(
        name: 'NTG - Med.8.A: Dyspnée cardiaque probable',
        page: MedPage.id,
        content: ContentParamedic.ntg8A),
    CategorieData(
        name: 'Nalaxone - Med.12: Intoxication aux opioïdes',
        page: MedPage.id,
        content: ContentParamedic.nalaxone),
    CategorieData(
        name: 'AAS - Med.10: Douleur thoracique',
        page: MedPage.id,
        content: ContentParamedic.aspirine),
    CategorieData(
        name: 'NTG - Med.10: Douleur thoracique',
        page: MedPage.id,
        content: ContentParamedic.ntg),
    CategorieData(
        name: 'Glucagon - Med.16: Hypoglycémie',
        page: MedPage.id,
        content: ContentParamedic.glucagon),
    CategorieData(
        name: 'Épinéphrine - Med.17: Anaphylaxie',
        page: MedPage.id,
        content: ContentParamedic.glucagon),
  ];

  List<CategorieData> get getCategorieDataMedicaments => _medicamentsDatas;
}
