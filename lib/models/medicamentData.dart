import 'package:flutter/foundation.dart';

class MedicamentData extends ChangeNotifier {
  final bool _criteresInclusionNecessaires = false;
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

  void resetMedState() {
    initMedState();
    print('should reset..');
    notifyListeners();
  }

  bool get criteresInclusionsTousNecessaire => _criteresInclusionNecessaires;
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
    'exclusion': [
      'Étouffement',
      'Traumatisme',
      'Allergie au sabultamol',
    ],
    'exception': [
      'Le salbutamol peut être administré si une obstruction des voies respiratoires supérieurs a été résolu.'
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

class MedicamentDataAAS extends MedicamentData {
  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['AAS - Med.10'],
    'descriptions': ['Ceci est un descriptions de l\'application du protocole'],
    'absolu': [
      'Douleur ou malaise rétrosternal non-traumatique entre l\'ombilic et la mâchoire incluant le dos et les bras persistant < 12 heures ou disparu :'
    ],
    'inclusion': [
      'DTOCP - Patient de 35 ans et plus',
      'DTOCP - Patient avec antécédent MCAS de moins de 35 ans',
      'DRS - Patient avec antécédent MCAS avec même douleur qu\'habituelle',
      'IAMEST lors de l\'ECG 12D',
    ],
    'exclusion': [
      'Grossesse ou allaitement',
      'Saignement actif',
      'Hémorragie digestive < 4 semaines',
      'AVC aigu nouveau < 48 heures (Signes et symptômes)',
      'Allergie à l\'AAS ou aux AINS',
      'Douleur d\'d\'origine traumatique',
    ],
    'exception': [
      'L\'AAS peut être administré malgré que la douleur est disparue à l\'arrivé au chevet du patient.'
    ],
    'administration': ['L\'AAS s\'administre par voie orale'],
    'dosage': [
      '320 mg',
    ],
    'repetition': ['Ne peut pas être répété (Maximum 1 administration)']
  };
}

class MedicamentDataNtg extends MedicamentData {
  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['NTG - Med.10'],
    'descriptions': ['Ceci est un descriptions de l\'application du protocole'],
    'absolu': [
      'Douleur ou malaise rétrosternal non-traumatique toujours présent entre l\'ombilic et la mâchoire incluant le dos et les bras persistant < 12 heures:'
    ],
    'inclusion': [
      'DTOCP - Patient de 35 ans et plus',
      'DTOCP - Patient avec antécédent MCAS de moins de 35 ans',
      'DRS - Patient avec antécédent MCAS avec même douleur qu\'habituelle',
      'IAMEST lors de l\'ECG 12D avec douleur présente',
    ],
    'exclusion': [
      'Allergie aux nitrates',
      'Douleur d\'origine traumatique',
      'Grossesse ou allaitement',
      'AVC aigu nouveau  < 48 heures',
      'Syncope associée à la douleur thoracique',
      'TAsys < 100 mmHg',
      'Chute cumulative  de TAsys ≥ 30 mmHg à la valeur initiale',
      'Bradycardie < 50 bpm ou tachycardie ≥ 100 bpm',
      'Présence de DAVG',
      'Médicament contre dysfonction érectile (classe PDE5) < 24 heures: Sildenafil (Viagra) / Vardenafil (Levitra, Staxyn)',
      'Médicament contre dysfonction érectile < 48 heures: Tadalafil (Cialis)',
      'Médicament contre hypertension pulmonaire: Sildenafil (Revatio), Tadalafil (Adcirca) ou autres médicaments de la même classe',
      'Tout supplément visant à améliorer la fonction sexuelle'
    ],
    'exception': [
      'La nitroglycérine doit être administré seulement si la douleur est présente.'
    ],
    'administration': ['La nitroglycérine s\'administre sublinguale'],
    'dosage': [
      '0.4 mg',
    ],
    'repetition': [
      'Répéter aux 5 minutes et cesser l\'administration après 4 doses si aucune amélioration.'
    ]
  };
}

class MedicamentDataNtg8A extends MedicamentData {
  @override
  final bool _criteresInclusionNecessaires = true;

  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['NTG - Med.8A'],
    'descriptions': ['Ceci est un descriptions de l\'application du protocole'],
    'absolu': [
      'Dyspnée avouée ou apparente chez un patient dont la dyspnée est d\'origine cardiaque probable, tous les critères d\'inclusion sont nécessaires: '
    ],
    'inclusion': [
      'Âge ≥ 35 ans',
      'Dyspnée',
      'Antécédent: Insuffisance cardiaque, Infarctus aigu du myocarde ou angine de poitrine (MCAS)',
      'Saturation A.A < 93% ou 94% avec oxygène à haute concentration (100%)',
      'Patient avec état d\'éveil: Alerte ou Verbal',
      'TAsys ≥ 160 mmHg'
    ],
    'exclusion': [
      'Histoire de fièvre < 24 heures',
      'Dyspnée d\'origine traumatique',
      'Présence DAVG',
      'Bradycardie < 50 bpm',
      'Médicament contre dysfonction érectile (classe PDE5) < 24 heures: Sildenafil (Viagra) / Vardenafil (Levitra, Staxyn)',
      'Médicament contre dysfonction érectile < 48 heures: Tadalafil (Cialis)',
      'Médicament contre hypertension pulmonaire: Sildenafil (Revatio), Tadalafil (Adcirca) ou autres médicaments de la même classe',
      'Tout supplément visant à améliorer la fonction sexuelle',
      'Grossesse ou allaitement',
      'AVC aigu nouveau  < 48 heures',
      'Allergie aux nitrates'
    ],
    'exception': [
      'L\'administration de NTG dans le cas de dyspnée d\'origine cardiaque probable peut être recommencé malgré que la TAsys soit descendu sous 160 mmHg lorsque celle-ci remonte. L\'administration doit cependant être arrêté durant toute la durée de l\'intervention si la fréquence cardiaque est inférieur à 50 bpm.'
    ],
    'administration': ['La nitroglycérine s\'administre sublinguale'],
    'dosage': [
      '0.4 mg',
    ],
    'repetition': ['Répéter aux 5 minutes pour un maximum de 4 doses']
  };
}

class MedicamentDataNalaxone extends MedicamentData {
  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['Nalaxone - Med.12'],
    'descriptions': ['Ceci est un descriptions de l\'application du protocole'],
    'absolu': [
      'Intoxication volontaire ou non aux narcotiques opioïdes, tous les critères d\'inclusion doivent être présents:'
    ],
    'inclusion': [
      'Âge ≥ 4 ans',
      'Suspicion d\'intoxication ou surdosage aux opioïdes',
      'État d\'éveil: "P" ou "U"',
      'Bradypnée ≤ 10/min (12 ans et +) ou Bradypnée ≤ 16/min (4 à 11 ans)',
    ],
    'exclusion': [
      'Allergie au nalaxone',
      'Convulsion post nalaxone',
    ],
    'exception': [
      'Surveiller l\'apparition de critères d\'exclusion post nalaxone'
    ],
    'administration': ['Le salbutamol s\'administre par nébulisation'], // TODO: Terminé nalaxone
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
