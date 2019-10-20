import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:provider/provider.dart';

class FavoriteSetButton extends StatefulWidget {
  @override
  _FavoriteSetButtonState createState() => _FavoriteSetButtonState();
}

class _FavoriteSetButtonState extends State<FavoriteSetButton> {
  bool isFavorite;

    void checkIsFavorite(BuildContext context) {
    isFavorite = Provider.of<GlobalData>(context).checkForFavoriteCategorie();
  }

  @override
  Widget build(BuildContext context) {
    checkIsFavorite(context);

    return IconButton(
      icon: Icon(
          (isFavorite) ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart),
      onPressed: () {
        Provider.of<GlobalData>(context).setFavoriteCategorie();
        setState(() {
          checkIsFavorite(context);
        });
      },
    );
  }

}
