import 'package:flutter/material.dart';
import 'constant.dart';

class IconWidget extends StatelessWidget {
  final IconData nameIcons;
  final String nameVar;

  IconWidget({@required this.nameIcons, @required this.nameVar});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          nameIcons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          nameVar,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
