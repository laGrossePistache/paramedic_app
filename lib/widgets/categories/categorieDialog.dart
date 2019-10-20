import 'package:flutter/material.dart';
import 'package:paramedic_app/models/categorieDataRetriever.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:paramedic_app/widgets/categories/categorieDialogOption.dart';
import 'package:provider/provider.dart';

class CategorieDialog extends StatelessWidget {
  final String title;
  final List<CategorieData> categorieData;

  CategorieDialog({this.title, this.categorieData});

  List<Widget> getDialogOption(BuildContext context) {
    List<Widget> dialogOptionWidgets = [];
    for (CategorieData currentMapData in categorieData) {
      dialogOptionWidgets.add(
        Divider(
          thickness: 1,
        ),
      );
      dialogOptionWidgets.add(CategorieDialogOption(
        title: currentMapData.name,
        pageName: currentMapData.page,
        content: currentMapData.content,
        onPressed: () {
          Provider.of<GlobalData>(context).currentCategorie = currentMapData;
          Navigator.pop(context);
          Navigator.pushNamed(context, currentMapData.page);
        },
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
      children: getDialogOption(context),
    );
  }
}
