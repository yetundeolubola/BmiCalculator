import 'package:flutter/material.dart';
import 'constant.dart';

class DownBottomWidget extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  DownBottomWidget({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle, style: kBottomText)),
        color: kBottomColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
