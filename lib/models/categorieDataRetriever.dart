import 'package:paramedic_app/pages/cpapPage.dart';
import 'package:paramedic_app/pages/medPage.dart';
import 'package:paramedic_app/pages/oxylatorPage.dart';
import 'package:paramedic_app/pages/tech10Page.dart';
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
        content: ContentParamedic.epinephrine),
  ];

  final List<CategorieData> _oxygenotheraphieDatas = [
    CategorieData(
        name: 'Tech.10 - Oxygène et saturation',
        page: Tech10Page.id,
        content: ContentParamedic.tech10),
    CategorieData(
      name: 'C-PAP - Valve de boussignac',
      page: CpapPage.id,
      content: ContentParamedic.cpap,
    ),
    CategorieData(
        name: 'Oxylator',
        page: OxylatorPage.id,
        content: ContentParamedic.oxylator)
  ];

  List<CategorieData> get getCategorieDataMedicaments => _medicamentsDatas;
  List<CategorieData> get getCategorieOxygenotheraphie =>
      _oxygenotheraphieDatas;

  List<CategorieData> get getAllCategories {
    List<CategorieData> allCategoriesData = [];
    allCategoriesData.addAll(_oxygenotheraphieDatas);
    allCategoriesData.addAll(_medicamentsDatas);

    return allCategoriesData;
  }
}
