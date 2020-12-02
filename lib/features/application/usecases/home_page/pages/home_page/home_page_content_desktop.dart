import 'package:cybear_jinni_site/core/route_names.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/contact_us_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkable/linkable.dart';
import 'package:url_launcher/url_launcher.dart';



/// Home page content for the desktop
class HomePageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: Image.asset(
                'assets/images/home_moc_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('CyBear Jinni',
                          style: TextStyle(fontSize: 60, color: Theme
                              .of(context)
                              .textTheme
                              .bodyText1
                              .color),
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 204,
                          top: 0.5),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Smart Home',
                          style: TextStyle(fontSize: 21, color: Theme
                              .of(context)
                              .textTheme
                              .bodyText1
                              .color,
                              fontWeight: FontWeight.w700),),
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(
              textColor: Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .color,
              color: Colors.black12,
              height: 500.0,
              onPressed: () {
                Navigator.pushNamed(context, devicesRoute,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Click here for more details about our'
                          ' devices',
                          style: TextStyle(fontSize: 30, color:
                          Theme
                              .of(context)
                              .textTheme
                              .bodyText1
                              .color),
                          textAlign: TextAlign.center),
                      const SizedBox(height: 50,),
                    ],
                  ),
                  Container(),
                  Container(
                    alignment: Alignment.center,
                    child: Image.network(
                      'https://user-images.githubusercontent.com/9304740/97103272-19572d00-16b4-11eb-8e47-394ec18b3809.png',
                      height: 400.0,
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),

            Container(
              color: Colors.black38,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                            children: <Widget>[
                              Text('What Do We Offer',
                                  style: TextStyle(fontSize: 50, color:
                                  Theme
                                      .of(context)
                                      .textTheme
                                      .
                                  bodyText1
                                      .color),
                                  textAlign: TextAlign.center),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .start,
                                  children: <Widget>[
                                    FlatButton(
                                      textColor: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyText2
                                          .color,
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return ContactUsPopup();
                                          },
                                        );
                                      },
                                      child: Linkable(
                                        textColor: Theme
                                            .of(context)
                                            .
                                        textTheme
                                            .bodyText2
                                            .color,
                                        style: const TextStyle(
                                            fontSize: 20),
                                        text:
                                        '● Installation of the system at your'
                                            ' home and providing a warranty for'
                                            ' a\n   fair price.',
                                      ),
                                    ),
                                    FlatButton(
                                      textColor: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyText2
                                          .color,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, devicesRoute);
                                      },
                                      child: Linkable(
                                        textColor: Theme
                                            .of(context)
                                            .
                                        textTheme
                                            .bodyText2
                                            .color,
                                        style: const TextStyle(
                                            fontSize: 20),
                                        text:
                                        '● Devices can be purchased online for '
                                            'self-installation.',
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () async {
                                        const String url = 'https://github.com/CyBear-Jinni';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Linkable(
                                          textColor: Theme
                                              .of(context)
                                              .
                                          textTheme
                                              .bodyText2
                                              .color,
                                          style: const TextStyle(
                                              fontSize: 20),
                                          text: '● Open source code and '
                                              'instructions '
                                              'for makers and tinkerers to '
                                              'build\n   their version of the'
                                              ' system.              '
                                              'Link: github.com/CyBear-Jinni'),
                                    )
                                  ],
                                ),

                              ),
                            ]
                        ),
                      ),

                      Expanded(
                        child: Column(
                            children: <Widget>[
                              Text('Our Vision',
                                  style: TextStyle(fontSize: 50, color:
                                  Theme
                                      .of(context)
                                      .textTheme
                                      .
                                  bodyText1
                                      .color),
                                  textAlign: TextAlign.center),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .start,
                                  children: <Widget>[
                                    FlatButton( // ignore: missing_required_param
                                      textColor: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyText2
                                          .color,
                                      child: Linkable(
                                        textColor: Theme
                                            .of(context)
                                            .
                                        textTheme
                                            .bodyText2
                                            .color,
                                        style: const TextStyle(
                                            fontSize: 20),
                                        text:
                                        '● Our goal is to raise the'
                                            ' quality of life for '
                                            'everyone.\n   We are doing'
                                            ' this by making Smart Home'
                                            ' more affordable\n   and '
                                            'accessible for the common'
                                            ' person.',
                                      ),

                                    ),
                                  ],
                                ),

                              ),
                            ]
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 500,
              child: FlatButton(
                color: Colors.black12,
                padding: const EdgeInsets.all(0),
                onPressed: () async {
                  const String url = 'https://snapcraft.io/cybear-jinni';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 10,),
                    Text('CyBear Jinni Smart Devices Distribution',
                        style: TextStyle(fontSize: 40, color:
                        Theme
                            .of(context)
                            .textTheme
                            .bodyText1
                            .color),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 10,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.7),
                                BlendMode.dstATop),
                            image: const NetworkImage(
                              'https://user-images.githubusercontent.com/9304740/100759143-f4638180-33f8-11eb-9a68-3e4fb531ffe6.png',
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),

            Container(
              color: Colors.black38,
              height: 500.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Text('Fan Art',
                      style: TextStyle(fontSize: 50, color:
                      Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          .color),
                      textAlign: TextAlign.center),
                  Container(),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/fan_art/CyBear_Jinni_art_1.jpg',
                      height: 400.0,
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),

            BottomNavigationMenu(),
          ],
        ),
        const SizedBox(height: 50,),
      ],
    );
  }
}