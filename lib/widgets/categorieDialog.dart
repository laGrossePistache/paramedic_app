import 'package:flutter/material.dart';
import 'package:paramedic_app/models/categorieData.dart';
import 'package:paramedic_app/widgets/categorieDialogOption.dart';

class CategorieDialog extends StatelessWidget {
  final String title;
  final CategorieData categorieData;

  CategorieDialog({this.title, this.categorieData});

  List<Widget> getDialogOption() {
    Map<String, String> mapData = categorieData.getDataMap;
    List<Widget> dialogOptionWidgets = [];
    mapData.forEach(
      (k, v) {
        dialogOptionWidgets.add(Divider(thickness: 1,));
        dialogOptionWidgets.add(CategorieDialogOption(
          title: k,
          pageName: v,
        ));
      },
    );
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
