import 'package:cybear_jinni_site/features/application/usecases/home_page/tabs/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


/// Top navigation menu for the site
class TopNavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipPath(
              clipper: CrosRightSizde(),
              child: Container(
                color: Colors.black87,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    SizedBox(width: 10,),
                    Tab(
                      icon: SizedBox(
                        width: 20,
                        child: Image(
                          image: AssetImage(
                            'assets/fan_art/after_editing/logo_no_background.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                    Tab(
                      icon: Icon(FontAwesomeIcons.phoneAlt,
                          color: Colors.white),
                      child: Text(
                        'Contact Us',
                      ),
                    ),
                    SizedBox(width: 70,)
                  ],
                ),
              ),
            ),

            const SizedBox(
              width: 500,
              height: 1,
            ),

            ClipPath(
              clipper: CrosLeftSizde(),
              child: Container(
                color: Colors.black87,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    SizedBox(width: 40,),
                    Tab(
                      icon: Icon(FontAwesomeIcons.addressCard,
                          color: Colors.white),
                      child: Text(
                        'About',
                      ),
                    ),
                    SizedBox(width: 20,),

                    Tab(
                      icon: Icon(FontAwesomeIcons.questionCircle,
                          color: Colors.white),
                      child: Text(
                        'FAQ',
                      ),
                    ),
                    SizedBox(width: 20,),
                    Tab(
                      icon: Icon(FontAwesomeIcons.lightbulb,
                          color: Colors.white),
                      child: Text(
                        'Devices',
                      ),
                    ),
                    SizedBox(width: 20,),
                    Tab(
                      icon: Icon(FontAwesomeIcons.home,
                          color: Colors.white),
                      child: Text(
                        'Home',
                      ),
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}