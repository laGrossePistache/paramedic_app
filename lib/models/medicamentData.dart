class MedicamentData {
  final Map<String, List<String>> _medicamentDataMap = null;

  List<String> getListValue(String index){
    return _medicamentDataMap[index];
  }
}

class MedicamentDataSalbutamol extends MedicamentData {
  @override
  final _medicamentDataMap = {
    'name': ['Salbutamol'],
    'descriptions': ['Ceci est un descriptions de l\'application du protocole'],
    'absolu': ['Dyspnée chez le patient avec un de ses critères :'],
    'inclusion': [
      'Patient asthmatique ou MPOC',
      'Cyanose',
      'Tirage',
      'Sibilance ou wheezing'
    ],
    'exclusion': [
      'Étouffement',
      'Traumatisme',
      'Allergie au sabultamol'
    ],
    'administration': [
      'Inhalation'
    ],
    'dosage' : [
      '5 mg : 8 ans et + ou 25kg et +',
      '2.5 mg : 1 à 7 ans ou 24kg et moins',
      '1.25 mg : moins de 1 ans'
    ]
  };
}
