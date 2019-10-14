import 'package:flutter/material.dart';
import 'package:paramedic_app/models/categorieData.dart';
import 'package:paramedic_app/widgets/categorieDialog.dart';

class CategorieButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool colorsNegative;
  final bool isActive;
  final CategorieData categorieData;

  CategorieButton({
    this.icon,
    this.title,
    this.description,
    this.colorsNegative,
    this.isActive,
    this.categorieData,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 3,
      padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.grey, width: 0.5)),
      color: (colorsNegative) ? Colors.blue[800] : Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: (colorsNegative) ? Colors.white : Colors.blue[800],
          ),
          Divider(
            color: colorsNegative ? Colors.white : Colors.blue[800],
            thickness: 1.5,
          ),
          Text(
            title,
            style: TextStyle(
                color: colorsNegative ? Colors.white : Colors.blue[800],
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            description,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: (colorsNegative) ? Colors.white70 : Colors.blue[700]),
          ),
        ],
      ),
      onPressed: () async {
        showDialog(
            context: context,
            builder: (context) => CategorieDialog(
                  title: title,
                  categorieData: categorieData,
                ));
      },
    );
  }
}
