import 'package:flutter/material.dart';
import 'package:paramedic_app/models/categorieData.dart';
import 'package:paramedic_app/widgets/categories/categorieDialogOption.dart';

class CategorieDialog extends StatelessWidget {
  final String title;
  final CategorieData categorieData;

  CategorieDialog({this.title, this.categorieData});

  List<Widget> getDialogOption() {
    List<Widget> dialogOptionWidgets = [];
    List<Map<String, String>> dataList = categorieData.categorieDataList;
    for (Map<String, String> currentMapData in dataList) {
      dialogOptionWidgets.add(
        Divider(
          thickness: 1,
        ),
      );
      dialogOptionWidgets.add(CategorieDialogOption(
        title: currentMapData['name'],
        pageName: currentMapData['page'],
        content: currentMapData['content'],
      ));
    }

    return dialogOptionWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      titlePadding: EdgeInsets.symmetric(vertical: 10.0),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      children: getDialogOption(),
    );
  }
}
