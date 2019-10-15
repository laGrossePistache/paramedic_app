/*
ProviderData enregistre les variables qui doivent être utiliser dans différents State.. 
On l'utilise pour le StateManagement
*/

import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/medicamentData.dart';
import 'package:flutter/foundation.dart';

class GlobalData extends ChangeNotifier { 

  String _currentContent;


  String get currentContent => _currentContent;
  set currentContent(String newContent){
    _currentContent = newContent;
    notifyListeners();
  }
}
