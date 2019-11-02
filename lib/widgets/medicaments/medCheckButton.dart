import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedCheckButton extends StatelessWidget {
  final Function onPressed;
  MedCheckButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 150,
        child: RaisedButton(
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.blue[800], width: 0.5)),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.check,
                size: 15,
              ),
              Expanded(
                  child: Text(
                'Tout cocher',
                textAlign: TextAlign.center,
              ))
            ],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
