import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoritesButton extends StatelessWidget {
  final String title;
  final bool colorsNegative;
  final Function onPressed;

  FavoritesButton({
    this.title,
    this.colorsNegative,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 3,
      padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.grey, width: 0.5)),
      color: (colorsNegative) ? Colors.blue[800] : Colors.white,
      child: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.heartbeat,
            color: (colorsNegative) ? Colors.white : Colors.blue[800],
          ),
          SizedBox(width: 15,),

          Text(
            title,
            style: TextStyle(
                color: colorsNegative ? Colors.white : Colors.blue[800],
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
