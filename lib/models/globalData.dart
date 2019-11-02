/*
GlobalData enregistre les variables qui doivent être utiliser dans différents State.. 
On l'utilise pour le StateManagement
*/
import 'package:flutter/foundation.dart';
import 'package:paramedic_app/models/categorieDataRetriever.dart';
import 'package:paramedic_app/models/persistantData.dart';

class GlobalData extends ChangeNotifier {
  CategorieData _currentCategorie;
  List<CategorieData> _favoritesCategories = [];
  String _username = 'username';

  //Constructor
  GlobalData() {
    retrievesData();
  }

  void retrievesData() async {
    PersistantData persistantData = PersistantData();
    _username = await persistantData.readUsername();
    _favoritesCategories = await persistantData.readFavoritesPages();
  }

// Getter
  CategorieData get currentCategorie => _currentCategorie;
  List<CategorieData> get favoritesCategories => _favoritesCategories;
  String get getUsername => _username;

// Setter
  set currentCategorie(CategorieData newCategorieData) {
    _currentCategorie = newCategorieData;
    notifyListeners();
  }

  String setFavoriteCategorie() {
    String answer = '';
    bool isAlreadyFavorite = false;
    int index = 0;
    for (var i = 0; i < _favoritesCategories.length; i++) {
      if (_favoritesCategories[i].content == _currentCategorie.content) {
        isAlreadyFavorite = true;
        index = i;
      }
    }
    if (isAlreadyFavorite) {
      // On retire le favoris
      _favoritesCategories.removeAt(index);
      answer = 'Cette page a été retiré de vos favoris';
    } else if (_favoritesCategories.length < 10) {
      // Si n'est pas favoris et inférieur è 10
      _favoritesCategories.add(currentCategorie);
      answer = 'Cette page a été ajouté à vos favoris';
    } else {
      answer = 'Vous avez déjà atteint le maximum de page favoris (10)';
    }
    PersistantData persistantData = PersistantData();
    persistantData.saveFavoritesPages(_favoritesCategories);
    return answer;
  }

  bool checkForFavoriteCategorie() {
    if (_favoritesCategories.length == 0) return false;
    for (CategorieData categorie in _favoritesCategories) {
      if (categorie.content == _currentCategorie.content) {
        return true;
      }
    }
    return false;
  }
}
