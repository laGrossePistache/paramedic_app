import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/categorieDataRetriever.dart';
import 'package:paramedic_app/widgets/homePage/categories/categorieDialog.dart';

class CategorieButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final List<CategorieData> categorieData;

  CategorieButton(
      {this.icon, this.title, this.description, this.categorieData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        child: InkWell(
          splashColor: kColorBackground,
          onTap: () async {
            showDialog(
              context: context,
              builder: (context) => CategorieDialog(
                title: title,
                categorieData: categorieData,
              ),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  icon,
                  color: kColorAppBar,
                ),
                title: Text(
                  title,
                  style: TextStyle(fontSize: 16.0, color: kColorAppBar),
                ),
                subtitle: Text(description),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
