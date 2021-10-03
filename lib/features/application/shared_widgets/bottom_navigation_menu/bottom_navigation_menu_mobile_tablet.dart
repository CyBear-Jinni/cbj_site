import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// Bottom navigation menu for mobile and tablet screen sizes
class BottomNavigationMenuMobileTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                color: Theme.of(context).textTheme.bodyText1!.color,
                thickness: 1,
                height: 3,
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text(
                        'Apps',
                        style: TextStyle(fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Tab(
                            icon: FaIcon(FontAwesomeIcons.appStoreIos,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                            child: const Text(
                              'App Store',
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              launch(
                                  'https://play.google.com/store/apps/details?id=com.cybear_jinni.smart_home');
                            },
                            child: Tab(
                              icon: FaIcon(FontAwesomeIcons.googlePlay,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                              child: Text(
                                'Play Store',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .color),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              launch('https://snapcraft.io/cybear-jinni');
                            },
                            child: Tab(
                              icon: FaIcon(FontAwesomeIcons.ubuntu,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                              child: Text(
                                'Snap Store',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .color),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Follow Us',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                launch('https://twitter.com/CyBearJinni');
                              },
                              child: Tab(
                                icon: FaIcon(FontAwesomeIcons.twitter,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                                child: const Text(''),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch(
                                    'https://instagram.com/cybearjinni?igshid=rfllj6qbv6l8');
                              },
                              child: Tab(
                                icon: FaIcon(FontAwesomeIcons.instagram,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                                child: const Text(''),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch(
                                    'https://www.linkedin.com/company/cybear-jinni');
                              },
                              child: Tab(
                                icon: FaIcon(FontAwesomeIcons.linkedin,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                                child: const Text(''),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch('https://discord.gg/mUXfwUY');
                              },
                              child: Tab(
                                icon: FaIcon(FontAwesomeIcons.discord,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                                child: const Text(''),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch('https://github.com/CyBear-Jinni');
                              },
                              child: Tab(
                                icon: FaIcon(FontAwesomeIcons.github,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                                child: const Text(''),
                              ),
                            ),
                          ]),
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
