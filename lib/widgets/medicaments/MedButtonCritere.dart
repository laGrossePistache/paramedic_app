import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedButtonCritere extends StatelessWidget {
  final String name;
  MedButtonCritere({this.name});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: ListTile(
        leading: Icon(FontAwesomeIcons.square),
        title: Text(name),
        onTap: (){
          print('Appuie sur un critère');
        },
      ),
    );
  }
}
