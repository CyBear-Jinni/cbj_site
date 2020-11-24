import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                        const Text('About Us',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                '● Our goal is to raise the quality of life for everyone.',
                                style: TextStyle(fontSize: 20,),
                              ),
                              Text(
                                '   We are doing this by making Smart Home more affordable',
                                style: TextStyle(fontSize: 20),),

                              Text(
                                '   and accessible for the common person.',
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
                        const Text('What Do We Offer',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                '● Installation of the system at your home and providing a warranty for a fair price.',
                                style: TextStyle(fontSize: 20,),
                              ),
                              Text(
                                '● Devices can be purchased online for self-installation.',
                                style: TextStyle(fontSize: 20),),
                              Text(
                                '● Open source code and instructions for makers and tinkerers to build',
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
              ],
            ),
          ],
        ),

        const SizedBox(height: 100,),

      ],
    );
  }
}
