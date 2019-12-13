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
      '- Le salbutamol peut être administré si une obstruction des voies respiratoires supérieurs a été résolu.'
    ],
    'administration': ['Le salbutamol s\'administre par nébulisation'],
    'dosage': [
      '8 ans et + ou 25kg et + : 5 mg',
      '1 à 7 ans ou - de 25kg: 2.5 mg ',
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
    'absolu': [
      'Douleur ou malaise rétrosternal non-traumatique entre l\'ombilic et la mâchoire incluant le dos et les bras persistant ou disparu < 12 heures\n\nLa douleur doit être sous forme pression, étau, écrasement, poing, indigestion ou douleur d\'angine habituelle.'
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
      '- L\'AAS peut être administré malgré que la douleur est disparue à l\'arrivé au chevet du patient.'
    ],
    'administration': ['L\'AAS s\'administre par voie orale'],
    'dosage': [
      '320 mg',
    ],
    'repetition': [
      'L\'administration ne doit pas être répété (Maximum 1 administration)'
    ]
  };
}

class MedicamentDataNtg extends MedicamentData {
  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['NTG - Med.10'],
    'absolu': [
      'Douleur ou malaise rétrosternal non-traumatique toujours présent entre l\'ombilic et la mâchoire incluant le dos et les bras persistant < 12 heures \n\nLa douleur doit être sous forme pression, étau, écrasement, poing, indigestion ou douleur d\'angine habituelle.'
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
      '- La nitroglycérine doit être administré seulement si la douleur est présente.'
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
    'absolu': [
      'Dyspnée avouée ou apparente chez un patient dont la dyspnée est d\'origine cardiaque probable. \n\nTous les critères d\'inclusion sont nécessaires: '
    ],
    'inclusion': [
      'Âge ≥ 35 ans',
      'Dyspnée',
      'Patient avec antécédent MCAS:\n- Insuffisance cardiaque\n- Infarctus aigu du myocarde\n- Angine de poitrine',
      'SpO2 A.A < 93%\n ou\nSpO2 < 94% avec oxygène à haute concentration (100%)',
      'Patient avec état d\'éveil: "A" ou "V"',
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
      '- L\'administration de NTG dans le cas de dyspnée d\'origine cardiaque probable peut être recommencé malgré que la TAsys soit descendu sous 160 mmHg lorsque celle-ci remonte. L\'administration doit cependant être arrêté durant toute la durée de l\'intervention si la fréquence cardiaque est inférieur à 50 bpm.'
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
  final bool _criteresInclusionNecessaires = true;

  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['Nalaxone - Med.12'],
    'absolu': [
      'Intoxication volontaire ou non aux narcotiques opioïdes, tous les critères d\'inclusion doivent être présents:'
    ],
    'inclusion': [
      'Âge ≥ 4 ans',
      'Suspicion d\'intoxication ou surdosage aux opioïdes',
      'État d\'éveil: "P" ou "U"',
      'Bradypnée ≤ 10/min (12 ans et +)\n ou\nBradypnée ≤ 16/min (4 à 11 ans)',
    ],
    'exclusion': [
      'Allergie au nalaxone',
      'Convulsion post nalaxone',
    ],
    'exception': [
      '- Surveiller l\'apparition de critères d\'exclusion post nalaxone'
    ],
    'administration': [
      'Le nalaxone s\'administre par voie intranasale (IN) et par injection intramusculaire (IM)'
    ],
    'dosage': [
      '0.4 mg IN q3 minutes.',
      '0.4 mg IM q5 minutes.',
      '2.0 mg IM & IN si aucune réponse ou réponse incomplète'
    ],
    'repetition': [
      '- 3 doses maximum (1.2 mg) de 0.4 mg IN (q3min) ou IM (q5min)\n\n- Si toujours aucune réponse ou incomplète, administrer 2.0 mg IN ou IM.\n\n- En cas d\'un patient en ACR, administrer 2.0 mg dès que possible avant la 2e analyse et une deuxième dose 2.0 mg avant l\'analyse suivante (Sans arrêter RCR)',
    ]
  };
}

class MedicamentDataGlucagon extends MedicamentData {
  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['Glucagon - Med.16'],
    'absolu': [
      'Le glucagon doit être administré dans les cas de trauma, postconvulsion et d\'AVC suspecté malgré la capacité du patient a prendre de l\'instaglucose',
    ],
    'inclusion': [
      'Glycémie capillaire < 4mmol/L',
    ],
    'exclusion': ['Anaphylaxie connue au latex'],
    'exception': ['Aucune particuliarité'],
    'administration': [
      'Le glucagon s\'administre par injection intramusculaire (IM)'
    ],
    'dosage': [
      '8 ans et + ou 25kg et + : 1 mg',
      '7 ans et - ou - de 25kg : 0.5 mg',
    ],
    'repetition': [
      'L\'administration ne doit pas être répété (Maximum 1 administration)'
    ]
  };
}

class MedicamentDataEpinephrine extends MedicamentData {
  @override
  final Map<String, List<String>> medicamentDataMap = {
    'name': ['Épinéphrine - Med.17'],
    'absolu': [
      'Contact allergène connu ou suspecté dans les 4 heures précédant le début des symptômes ou administration d’épinéphrine pour une réaction anaphylactique dans les derniers 7 jours (réaction biphasique) \nLe patient doit présenter une des présentations cliniques ci-dessous:',
    ],
    'inclusion': [
      'Présence d\'une défaillance circulatoire ou détresse respiratoire',
      'Présence d\' au moins 2 présentations cliniques suivantes: \n- Urticaire ou angioédème  \n-Difficulté respiratoire \n- Défaillance circulatoire \n- Symptômes gastro-intestinaux'
    ],
    'exclusion': [],
    'exception': ['Aucune mise en garde particulière'],
    'administration': [
      'L\'épinéphrine s\'administre par injection intramusculaire (IM)'
    ],
    'dosage': [
      '8 ans et + ou 25kg et + : 0.3 mg',
      '7 ans et - ou - de 25kg : 0.15 mg',
      'ACR - Post 1ère tentative intubation: 0.5 mg'
    ],
    'repetition': [
      '- Répêter aux 5 minutes si détérioration du patient ou aux 10 minutes s\'il n\'y a pas d\'amélioration ou que les critères sont encore présents. \n\n- En cas d\'ACR, administrer 0.5mg post 1ere tentative d\'intubation',
    ]
  };
}

