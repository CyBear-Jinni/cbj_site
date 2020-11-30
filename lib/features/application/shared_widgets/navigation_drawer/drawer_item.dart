import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// Draw the items in the drawer
class DrawerItem extends StatelessWidget {

  /// All items must have title and icon to look good
  const DrawerItem(this.title, this.icon);

  /// Text of the item
  final String title;

  /// Icon to show in the item
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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