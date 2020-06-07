import 'package:flutter/cupertino.dart';

import 'Constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kSpaceInBetween,
        ),
        Text(
          label,
          style: kLabelStyle,
        )
      ],
    );
  }
}
