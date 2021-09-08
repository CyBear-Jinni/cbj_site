import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Set Up page content for the desktop
class SetUpPageContentDesktop extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      thickness: 13,
      controller: _scrollController,
      child: ListView(
        controller: _scrollController,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Colors.black26,
                height: 250,
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Set Up CyBear Jinni',
                            style: TextStyle(
                                fontSize: 50,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const [
                            TextSpan(
                              text: 'First step: ',
                              style: TextStyle(fontSize: 20),
                            ),
                            TextSpan(
                              text: 'Setting Up a Hub',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 100,
                      ),
                      child: Column(
                        children: [
                          const Text('Choose one of the options',
                              style: TextStyle(fontSize: 20)),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            '* RaspberryPi Hub Setup',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                const TextSpan(
                                  text: 'Download the RaspberryPi image '
                                      '(.iso file) ',
                                ),
                                TextSpan(
                                  text: 'from here',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch('');
                                    },
                                ),
                                const TextSpan(
                                  text: '.',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                const TextSpan(
                                  text: 'Flash the OS images (.iso file) to SD'
                                      ' card using ',
                                ),
                                TextSpan(
                                  text: 'iso flashing program',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch('https://www.balena.io/etcher/');
                                    },
                                ),
                                const TextSpan(
                                  text: '.',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            '* Linux Hub Setup',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                const TextSpan(
                                  text: 'Install the ',
                                ),
                                TextSpan(
                                  text: 'cbj-hub snap',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch('https://snapcraft.io/cbj-hub');
                                    },
                                ),
                                const TextSpan(
                                  text: '.',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                const TextSpan(
                                  text: 'Install an MQTT broker ',
                                ),
                                TextSpan(
                                  text: 'mosquitto snap',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch('https://snapcraft.io/mosquitto');
                                    },
                                ),
                                const TextSpan(
                                  text: '.',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                const TextSpan(
                                  text: 'The MQTT broker require some'
                                      ' configuration, ',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const [
                            TextSpan(
                              text: 'Second step: ',
                              style: TextStyle(fontSize: 20),
                            ),
                            TextSpan(
                              text: 'Setting Up the App',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 100,
                      ),
                      child: Column(
                        children: const [
                          Text('Choose one of the options',
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            '* Android App Setup',
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            '* Linux App Setup',
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationMenu(),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
