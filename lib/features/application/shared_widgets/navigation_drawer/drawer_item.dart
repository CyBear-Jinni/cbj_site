import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DrawerItem extends StatelessWidget {

  const DrawerItem(this.title, this.icon);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(children: <Widget>[
          Icon(icon, color: Colors.white,),
          const SizedBox(width: 30,),
          Text(title),
        ],),
      ),
    );
  }
}