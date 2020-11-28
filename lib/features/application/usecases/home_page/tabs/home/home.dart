import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linkable/linkable.dart';

/// Home and lending page of the site
class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  child: Image.asset(
                    'assets/images/home_moc_image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),

                Column(
                  children: <Widget>[
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
                          Text('Devices',
                              style: TextStyle(fontSize: 50, color:
                              Theme.of(context).textTheme.bodyText1.color),
                              textAlign: TextAlign.center),
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
                      color: Colors.black12,
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
                                            const Text(
                                              '● Installation of the system at your'
                                                  ' home and providing a warranty for'
                                                  ' a fair price.',
                                              style: TextStyle(fontSize: 20,),
                                            ),
                                            const Text(
                                              '● Devices can be purchased online for '
                                                  'self-installation.',
                                              style: TextStyle(fontSize: 20),),
                                            Linkable(
                                                textColor: Theme
                                                    .of(context)
                                                    .
                                                textTheme
                                                    .bodyText2
                                                    .color,
                                                style: const TextStyle(fontSize: 20),
                                                text: '● Open source code and '
                                                    'instructions '
                                                    'for makers and tinkerers to '
                                                    'build\n   their version of the'
                                                    ' system.              '
                                                    'Link: github.com/CyBear-Jinni'),
                                          ],
                                        ),

                                      ),
                                    ]
                                ),

                              ),

                              Expanded(
                                child: Column(
                                    children: <Widget>[
                                      Text('About Us',
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
                                          children: const <Widget>[
                                            Text(
                                              '● Our goal is to raise the'
                                                  ' quality of life for '
                                                  'everyone.\n   We are doing '
                                                  'this by making Smart Home '
                                                  'more affordable\n   and '
                                                  'accessible for the common'
                                                  ' person.',
                                              style: TextStyle(fontSize: 20,),
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
                              Theme.of(context).textTheme.bodyText1.color),
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
            ),
            TopNavigationMenu(),
          ]
      );
  }
}

class CrosRightSizde extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width/ 1.2 , size.height);
    path.lineTo(size.width , 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CrosRightSizde oldClipper) => false;
}


class CrosLeftSizde extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width / 15, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CrosLeftSizde oldClipper) => false;
}