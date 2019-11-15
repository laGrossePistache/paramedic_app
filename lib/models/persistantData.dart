import 'package:enum_to_string/enum_to_string.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/categorieDataRetriever.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersistantData {
  final usernameKey = 'username';
  final favoritesKey = 'favorites';

  Future<String> readUsername() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(usernameKey) ?? 'à toi !';
    return value;
  }

  void saveUsername(String user) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(usernameKey, user);
  }

  void saveFavoritesPages(List<CategorieData> favoritesList) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> favStringList = [];
    for (var item in favoritesList) {
      String result = EnumToString.parse(item.content);
      favStringList.add(result);
    }
    prefs.setStringList(favoritesKey, favStringList);
  }

  Future<List<CategorieData>> readFavoritesPages() async {
    final prefs = await SharedPreferences.getInstance();
    final stringList = prefs.getStringList(favoritesKey) ?? [];
    List<CategorieData> newCategorieData = [];
    List<CategorieData> possibleCategoriesData = CategorieDataRetriever().getAllCategories;


    for (var item in stringList) {
      ContentParamedic content =
          EnumToString.fromString(ContentParamedic.values, item);
      for (var item in possibleCategoriesData) {
        if (content == item.content) {
          newCategorieData.add(item);
        }
      }
    }
    return newCategorieData;
  }
}
