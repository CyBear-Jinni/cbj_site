import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


/// Bottom navigation menu for desktop screen size
class BottomNavigationMenuDesktop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100,
            vertical: 5,),
          child: Column(
            children: <Widget>[
              Divider(
                color: Theme.of(context).textTheme.bodyText1.color,
                thickness: 1,
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text('Apps',
                        style: TextStyle(fontSize: 40,
                          decoration: TextDecoration.underline,
                        ),),
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            SizedBox(width: 40,),
                            Tab(
                              icon: Icon(FontAwesomeIcons.appStoreIos,
                                  color: Colors.white),
                              child: Text(
                                'App Store',
                              ),
                            ),
                            SizedBox(width: 40,),
                            Tab(
                              icon: Icon(FontAwesomeIcons.googlePlay,
                                  color: Colors.white),
                              child: Text(
                                'Play Store',
                              ),
                            ),
                            SizedBox(width: 40,),
                          ]),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Text('Follow Us',
                        style: TextStyle(fontSize: 40,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children:  <Widget>[
                            const SizedBox(width: 40,),

                            FlatButton(
                              textColor: Theme.of(context).textTheme.bodyText1.color,
                              onPressed: () {
                                launch('https://www.facebook.com/CyBearJinniHome');
                              },
                              child:  const Tab(
                                icon:
                                Icon(FontAwesomeIcons.facebook,
                                    color: Colors.white),
                                child: Text(''),
                              ),
                            ),

                            const SizedBox(width: 20,),


                            FlatButton(
                              textColor: Theme.of(context).textTheme.bodyText1.color,
                              onPressed: () {
                                launch('https://instagram.com/cybearjinni?igshid=rfllj6qbv6l8');
                              },
                              child:  const Tab(
                                icon:
                                Icon(FontAwesomeIcons.instagram,
                                    color: Colors.white),
                                child: Text(''),
                              ),
                            ),

                            const SizedBox(width: 20,),

                            FlatButton(
                              textColor: Theme.of(context).textTheme.bodyText1.color,
                              onPressed: () {
                                launch('https://www.linkedin.com/company/cybear-jinni');
                              },
                              child:  const Tab(
                                icon:
                                Icon(FontAwesomeIcons.linkedin,
                                    color: Colors.white),
                                child: Text(''),
                              ),
                            ),

                            const SizedBox(width: 20,),

                            FlatButton(
                              textColor: Theme.of(context).textTheme.bodyText1.color,
                              onPressed: () {
                                launch('https://github.com/CyBear-Jinni');
                              },
                              child:  const Tab(
                                icon:
                                Icon(FontAwesomeIcons.github,
                                    color: Colors.white),
                                child: Text(''),
                              ),
                            ),
                            const SizedBox(width: 40,),
                          ]
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}