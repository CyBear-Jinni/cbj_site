import 'package:cached_network_image/cached_network_image.dart';
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
                        vertical: 50,
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
                            'RaspberryPi Hub Setup',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const [
                                  TextSpan(
                                    text: '1. ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: 'Download the RaspberryPi image '
                                        '(.iso file). Currently not suppored.',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: const [
                                    TextSpan(
                                      text: '2. ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: 'Flash the OS images (.iso file) to'
                                          ' the SD card using iso flashing '
                                          'program like balenaEtcher',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: InkWell(
                                  onTap: () {
                                    launch('https://www.balena.io/etcher/');
                                  },
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://cdn-learn.adafruit.com/assets/assets/000/089/198/medium800/learn_raspberry_pi_image.png?1584023605',
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const [
                                  TextSpan(
                                    text: '3. ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  TextSpan(
                                    text:
                                        'Connect the RaspberryPi to with internat cable and power it on',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Divider(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            thickness: 1,
                            height: 40,
                          ),
                          const Text(
                            'Linux Hub Setup',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: const [
                                    TextSpan(
                                      text: '1. ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: 'Install an MQTT broker like the'
                                          ' mosquitto snap',
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  launch('https://snapcraft.io/mosquitto');
                                },
                                child: SizedBox(
                                  width: 200,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'http://www.londatiga.net/wp-content/uploads/2019/05/Untitled-3.jpg',
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: const [
                                    TextSpan(
                                      text: '2. ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: 'Install the cbj-hub snap   ',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: InkWell(
                                  onTap: () {
                                    launch('https://snapcraft.io/cbj-hub');
                                  },
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://snapcraft.io/static/images/badges/en/snap-store-black.svg?v=49a12f8',
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
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
                        vertical: 50,
                        horizontal: 100,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Android App Setup',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: [
                                    const TextSpan(
                                      text: 'Install the ',
                                    ),
                                    TextSpan(
                                      text: 'CyBear Jinni Android App',
                                      style:
                                          const TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch(
                                              'https://play.google.com/store/apps/details?id=com.cybear_jinni.smart_home');
                                        },
                                    ),
                                    const TextSpan(
                                      text:
                                          ' from the play store on your phone.',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: InkWell(
                                  onTap: () {
                                    launch(
                                        'https://play.google.com/store/apps/details?id=com.cybear_jinni.smart_home');
                                  },
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://play.google.com/intl/en_us/badges/images/generic/en_badge_web_generic.png',
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            thickness: 1,
                            indent: 100,
                            endIndent: 100,
                            height: 40,
                          ),
                          const Text(
                            'Linux App Setup',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: [
                                    const TextSpan(
                                      text:
                                          'Install the app on your prefread platform',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: InkWell(
                                  onTap: () {
                                    launch('https://snapcraft.io/cybear-jinni');
                                  },
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://snapcraft.io/static/images/badges/en/snap-store-black.svg?v=49a12f8',
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
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
