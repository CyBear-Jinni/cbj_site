import 'package:cybear_jinni_site/core/my_singleton.dart';
import 'package:cybear_jinni_site/core/route_names.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/contact_us_popup.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The specific look for the top navigation menu for tablet desktop
class TopNavigationMenuTabletDesktop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
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
                children: <Widget>[
                  const SizedBox(width: 20,),
                  FlatButton(
                    textColor: Theme.of(context).textTheme.bodyText1.color,
                    onPressed: () {
                      if (MySingleton.getCurrentPageName != 'landingPage' &&
                          MySingleton.getCurrentPageName != homeRoute) {
                        Navigator.pushNamed(context, homeRoute,
                        );
                      }
                      else {
                        Navigator.pushReplacementNamed(context, homeRoute);
                      }
                    },
                    child: const
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
                  ),
                  const SizedBox(width: 20,),

                  FlatButton(
                    textColor: Theme.of(context).textTheme.bodyText1.color,
                    onPressed: () {
                      ContactUsPlaceHolder(context);
                    },
                    child: const Tab(
                      icon: Icon(FontAwesomeIcons.phoneAlt,
                          color: Colors.white),
                      child: Text(
                        'Contact Us',
                      ),
                    ),
                  ),

                  const SizedBox(width: 40,)

                ],
              ),
            ),
          ),

          ClipPath(
            clipper: CrosLeftSizde(),
            child: Container(
              color: Colors.black87,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const SizedBox(width: 40,),
                  FlatButton(
                    textColor: Theme.of(context).textTheme.bodyText1.color,
                    onPressed: () {
                      if (MySingleton.getCurrentPageName != aboutRoute) {
                        Navigator.pushNamed(context, aboutRoute);
                      }
                      else {
                        Navigator.pushReplacementNamed(context, aboutRoute);
                      }
                    },
                    child: const Tab(
                      icon: Icon(FontAwesomeIcons.addressCard,
                          color: Colors.white),
                      child: Text(
                        'About',
                      ),
                    ),
                  ),

                  const SizedBox(width: 20,),
                  FlatButton(
                    textColor: Theme.of(context).textTheme.bodyText1.color,
                    onPressed: () {
                      if (MySingleton.getCurrentPageName != faqRoute) {
                        Navigator.pushNamed(context, faqRoute);
                      }
                      else {
                        Navigator.pushReplacementNamed(context, faqRoute);
                      }
                    },
                    child: const Tab(
                      icon: Icon(FontAwesomeIcons.questionCircle,
                          color: Colors.white),
                      child: Text(
                        'FAQ',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  FlatButton(
                    textColor: Theme.of(context).textTheme.bodyText1.color,
                    onPressed: () {
                      if (MySingleton.getCurrentPageName != devicesRoute) {
                        Navigator.pushNamed(context, devicesRoute);
                      }
                      else {
                        Navigator.pushReplacementNamed(context,
                            devicesRoute);
                      }
                    },
                    child: const Tab(
                      icon: Icon(FontAwesomeIcons.lightbulb,
                          color: Colors.white),
                      child: Text(
                        'Devices',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  FlatButton(
                    textColor: Theme.of(context).textTheme.bodyText1.color,
                    onPressed: () {
                      if(MySingleton.getCurrentPageName != 'landingPage' &&
                          MySingleton.getCurrentPageName != homeRoute) {
                        Navigator.pushNamed(context, homeRoute);
                      }
                      else {
                        Navigator.pushReplacementNamed(context, homeRoute);
                      }
                    },
                    child: const Tab(
                      icon: Icon(FontAwesomeIcons.home,
                          color: Colors.white),
                      child: Text(
                        'Home',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}