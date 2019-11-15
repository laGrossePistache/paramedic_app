import 'package:flutter/material.dart';

import '../constant.dart';

class ContentCard extends StatelessWidget {
  final String id;
  final String titleWidget;
  final List<Widget> contentWidget;
  final Color titleTextColor;
  final Color backgroundTitleColor;

  ContentCard({@required this.titleWidget, @required this.contentWidget, this.id ="", this.titleTextColor= kColorAppBar, this.backgroundTitleColor = kColorBackground});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: backgroundTitleColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    id,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        titleWidget,
                        style: TextStyle(fontWeight: FontWeight.bold, color: titleTextColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            width: double.infinity,
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: contentWidget,
            ),
          ),
        ],
      ),
    );
  }
}
