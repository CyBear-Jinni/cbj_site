


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme
                .of(context)
                .primaryColor,
            Theme
                .of(context)
                .accentColor,
            Theme
                .of(context)
                .accentColor,
            Theme
                .of(context)
                .primaryColor
          ],
        ),),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10,),

          Text('CyBear Jinni',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          SizedBox(height: 20,),
          SizedBox(
              width: 60,
              child: Image(
                image: AssetImage(
                  'assets/fan_art/after_editing/logo_no_background.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}