import "package:flutter/material.dart";

class Review extends StatelessWidget {

  String avatarSrc = 'https://image.flaticon.com/icons/svg/147/147144.svg';
  String name = 'John Doe';
  String details = '1 review 5 photos';
  String comment= 'There is an amazing place in Sri Lanka';

  Review(this.avatarSrc, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(avatarSrc),
          fit: BoxFit.cover
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}