/*
ProviderData enregistre les variables qui doivent être utiliser dans différents State.. 
On l'utilise pour le StateManagement
*/

import 'package:paramedic_app/models/medicamentData.dart';
import 'package:flutter/foundation.dart';

class UserData extends ChangeNotifier {
  MedicamentData _currentMedicamentData;

  set currentMedicamentData(MedicamentData data){
    _currentMedicamentData = data;
    notifyListeners();
  }

  void get getCurrentMedicamentData => _currentMedicamentData;
}