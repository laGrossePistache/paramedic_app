import 'package:flutter/foundation.dart';

class MedicamentData extends ChangeNotifier {
  final List<bool> _criteresInclusion = [];
  final List<bool> _criteresExclusion = [];
  final List<bool> _dosages = [];
  final Map<String, List<String>> medicamentDataMap = {};

  MedicamentData() {
    initMedState();
  }

  void initMedState() {
    _criteresExclusion.clear();
    _criteresInclusion.clear();
    _dosages.clear();
    medicamentDataMap['inclusion']
        .forEach((k) => _criteresInclusion.add(false));
    medicamentDataMap['exclusion']
        .forEach((k) => _criteresExclusion.add(false));
    medicamentDataMap['dosage'].forEach((k) => _dosages.add(false));
  }

  void setCriteresExclusion(int index, bool newValue) {
    _criteresExclusion[index] = newValue;
    notifyListeners();
  }

  void setCriteresInclusion(int index, bool newValue) {
    _criteresInclusion[index] = newValue;
    notifyListeners();
  }

  void chooseDosage(int index) {
    for (var i = 0; i < _dosages.length; i++) {
      if (i == index) {
        _dosages[i] = !_dosages[i];
        continue;
      }
      _dosages[i] = false;
    }
    notifyListeners();
  }

  void resetMedState(){
    initMedState();
    print('should reset..');
        notifyListeners();
  }

  List<bool> get criteresInclusion => _criteresInclusion;
  List<bool> get criteresExclusion => _criteresExclusion;
  List<bool> get dosages => _dosages;
}

class MedicamentDataSalbutamol extends MedicamentData {
  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['Salbutamol - Med.8'],
    'descriptions': ['Ceci est un descriptions de l\'application du protocole'],
    'absolu': [
      'Dyspnée chez le patient avec au moins un des critères suivant:'
    ],
    'inclusion': [
      'Patient asthmatique ou MPOC avec dyspnée augmentée si chronique',
      'Saturation intiale < à 92% à A.A',
      'Cyanose',
      'Tirage',
      'Sibilance ou wheezing'
    ],
    'exclusion': ['Étouffement', 'Traumatisme', 'Allergie au sabultamol'],
    'exception': [
      'Le salbutamol peut être administrer si une obstruction des voies respiratoires supérieurs a été résolu.'
    ],
    'administration': ['Le salbutamol s\'administre par nébulisation'],
    'dosage': [
      '8 ans et + ou 25kg et + : 5 mg',
      '1 à 7 ans ou moins de 25kg: 2.5 mg ',
      'Moins de 1 ans : 1.25 mg '
    ],
    'repetition': [
      'Répéter 2 fois (maximum 3 administration) si les critères sont toujours présents'
    ]
  };
}
