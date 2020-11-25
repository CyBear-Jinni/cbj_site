import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

                const SizedBox(height: 100,),

                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('What Do We Offer',
                                    style: TextStyle(fontSize: 50),
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
                                        '● Installation of the system at your'
                                            ' home and providing a warranty for'
                                            ' a fair price.',
                                        style: TextStyle(fontSize: 20,),
                                      ),
                                      Text(
                                        '● Devices can be purchased online for '
                                            'self-installation.',
                                        style: TextStyle(fontSize: 20),),
                                      Text(
                                        '● Open source code and instructions '
                                            'for makers and tinkerers to build',
                                        style: TextStyle(fontSize: 20),),
                                      Text(
                                        '   their version of the system.',
                                        style: TextStyle(fontSize: 20),),
                                    ],
                                  ),

                                ),
                              ]
                          ),

                        ),

                        Expanded(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('About Us',
                                    style: TextStyle(fontSize: 50),
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
                                        '● Our goal is to raise the quality of '
                                            'life for everyone.',
                                        style: TextStyle(fontSize: 20,),
                                      ),
                                      Text(
                                        '   We are doing this by making Smart '
                                            'Home more affordable',
                                        style: TextStyle(fontSize: 20),),

                                      Text(
                                        '   and accessible for the common'
                                            ' person.',
                                        style: TextStyle(fontSize: 20),),

                                    ],
                                  ),

                                ),
                              ]
                          ),

                        ),
                      ],
                    ),
                    const SizedBox(height: 10000,),

                  ],
                ),

                const SizedBox(height: 100,),

              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ClipPath(
                    clipper: CrosRightSizde(),
                    child: Container(
                      color: Colors.black,
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
                            icon: Icon(FontAwesomeIcons.phone, color: Colors.white),
                            child: Text(
                              '052-234-1429',
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
                        color: Colors.black,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            SizedBox(width: 50,),
                            Tab(
                              icon: Icon(FontAwesomeIcons.history, color: Colors.white),
                              child: Text(
                                'Home_Page',
                              ),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.cube, color: Colors.white),
                              child: Text(
                                'About',
                              ),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.solidLightbulb, color: Colors.white),
                              child: Text(
                                'News',
                              ),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.history, color: Colors.white),
                              child: Text(
                                'Home_Page',
                              ),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.cube, color: Colors.white),
                              child: Text(
                                'About',
                              ),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.solidLightbulb, color: Colors.white),
                              child: Text(
                                'News',
                              ),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.history, color: Colors.white),
                              child: Text(
                                'Home_Page',
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                ],
              ),
            )
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
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width/15, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width , 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CrosLeftSizde oldClipper) => false;
}