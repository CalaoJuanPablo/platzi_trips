import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final starBorder = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );
    
    getStars(double stars) {
      List<Widget> starList = new List();
      for (int i = 0; i < 5; i++) {
        if (stars == 0) {
          starList.add(starBorder);
          continue;
        }
        if ((stars - 1) >= 0) {
          starList.add(star);
          stars -= 1;
          continue;
        }
        if ((stars - 1) <0) {
          starList.add(starHalf);
          stars = 0;
        }
      }
      return starList;
    }

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            right: 20.0,
            left: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: getStars(this.stars),
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20
      ),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16,
          height: 1.5,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      children: <Widget>[
        titleStars,
        description
      ],
    );
  }

}