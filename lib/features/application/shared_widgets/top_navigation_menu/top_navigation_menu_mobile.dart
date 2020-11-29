import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



/// The specific look for the top navigation menu for tablet desktop
class TopNavigationMenuMobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(FontAwesomeIcons.bars,
            color: Theme.of(context).textTheme.bodyText1.color ,
          ),
          )
        ],
      ),
    );
  }

}