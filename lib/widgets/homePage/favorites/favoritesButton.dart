import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';

class FavoritesButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  FavoritesButton({
    this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(  
        elevation: 3,
        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            // side: BorderSide(color: kColorAppBar, width: 0.5),
            ),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.heartbeat,
              color: kColorAppBar,
            ),
            SizedBox(width: 15,),

            Expanded(
              child: Text(
                title,
                style: TextStyle(
                    color: kColorAppBar,
                    fontSize: 16.0,
                    // fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
