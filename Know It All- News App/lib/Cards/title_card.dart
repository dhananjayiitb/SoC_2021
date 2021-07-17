import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {

  final String title;
  final bool activated;
  TitleCard(this.title, this.activated);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5, left: 17, right: 17),
      child: Text(
        '$title',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: activated ? FontWeight.w600 : FontWeight.w300,
        ),
      ),
    );
  }
}
