import 'package:flushbar/flushbar.dart';
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

    void showFlushBar(BuildContext context, String msg) {
    Flushbar(
      message: msg,
      // Ajouter a la liste des med administré
      duration: Duration(seconds: 2),
      margin: EdgeInsets.all(8),
      borderRadius: 8,
      icon: Icon(
        FontAwesomeIcons.solidHeart,
        size: 20.0,
        color: Colors.yellow,
      ),
    )..show(context);
  }

  @override
  Widget build(BuildContext context) {
    checkIsFavorite(context);

    return IconButton(
      icon: Icon(
          (isFavorite) ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart),
      onPressed: () {
        Provider.of<GlobalData>(context).setFavoriteCategorie();
        showFlushBar(context, (isFavorite)? 'Cette page a été retiré de vos favoris' : 'Cette page a été ajouté à vos favoris');
        setState(() {
          checkIsFavorite(context);
        });
      },
    );
  }

}
