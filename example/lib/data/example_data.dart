import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

List<Reaction> flagsReactions = [
  Reaction(
    child: _buildIcon('assets/images/united-kingdom.png'),
  ),
  Reaction(
    child: _buildIcon('assets/images/algeria.png'),
  ),
  Reaction(
    child: _buildIcon('assets/images/germany.png'),
  ),
  Reaction(
    child: _buildIcon('assets/images/spain.png'),
  ),
  Reaction(
    child: _buildIcon('assets/images/china.png'),
  ),
];

final defaultInitialReaction = Reaction(
  child: _buildIconFacebook('assets/images/like.png',
      Text('Like', style: TextStyle(color: Colors.grey[600]))),
);

final facebookReactions = [
  Reaction(
    child: _buildIconFacebook('assets/images/like_fill.png',
        Text('Like', style: TextStyle(color: Color(0XFF3b5998)))),
  ),
  Reaction(
    child: _buildIconFacebook('assets/images/love.png',
        Text('Love', style: TextStyle(color: Color(0XFFed5168)))),
  ),
  Reaction(
    child: _buildIconFacebook('assets/images/wow.png',
        Text('Wow', style: TextStyle(color: Color(0XFFffda6b)))),
  ),
  Reaction(
    child: _buildIconFacebook('assets/images/haha.png',
        Text('Haha', style: TextStyle(color: Color(0XFFffda6b)))),
  ),
  Reaction(
    child: _buildIconFacebook('assets/images/sad.png',
        Text('Sad', style: TextStyle(color: Color(0XFFffda6b)))),
  ),
  Reaction(
      child: _buildIconFacebook('assets/images/angry.png',
          Text('Angry', style: TextStyle(color: Color(0XFFf05766))))),
];

Widget _buildPreviewIcon(String path, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Column(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w300, color: Colors.white),
        ),
        SizedBox(
          height: 7.5,
        ),
        Image.asset(path, height: 30),
      ],
    ),
  );
}

Widget _buildPreviewIconFacebook(String path) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 5),
    child: Image.asset(path, height: 40),
  );
}

Widget _buildIcon(String path) {
  return Image.asset(
    path,
    height: 30,
    width: 30,
  );
}

Widget _buildIconFacebook(String path, Text text) {
  return Container(
    color: Colors.transparent,
    child: Row(
      children: <Widget>[
        Image.asset(path, height: 20),
        SizedBox(
          width: 5,
        ),
        text,
      ],
    ),
  );
}
