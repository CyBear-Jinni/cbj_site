import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Text(
          'Home',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme.of(context).textTheme.bodyText1.color,
              decoration: TextDecoration.underline),
        ).tr(),
        Container(
          height: 20,
        ),
        const Text('Empty_history').tr()
      ],
    );
  }
}
