import 'package:cybear_jinni_site/features/application/shared_widgets/navigation_drawer/drawer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DrawerItemWithBackground extends StatelessWidget {

  const DrawerItemWithBackground(this.title, this.icon);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      textColor: Theme
          .of(context)
          .textTheme
          .bodyText1
          .color,
      color: Colors.black38,
      onPressed: () {
        Navigator.pushNamed(context, 'devicesPage',
        );
      },
      child: DrawerItem(title, icon),
    );
  }
}