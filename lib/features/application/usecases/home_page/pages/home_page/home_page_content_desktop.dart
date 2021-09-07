import 'package:cached_network_image/cached_network_image.dart';
import 'package:cybear_jinni_site/core/route_names.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// Home page content for the desktop
class HomePageContentDesktop extends StatelessWidget {
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
          Stack(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: CachedNetworkImage(
                  imageUrl: 'https://i.ibb.co/2SwVLf3/House.jpg',
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: const EdgeInsets.only(top: 100, left: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'CyBear Jinni',
                            style: TextStyle(
                                fontSize: 60,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 204, top: 0.5),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Smart Home',
                            style: TextStyle(
                                fontSize: 21,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontWeight: FontWeight.w700),
                          ),
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
              Container(
                color: Colors.blue.withOpacity(0.1),
                height: 100.0,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      children: const [
                        TextSpan(text: 'CyBear Jinni '),
                        TextSpan(
                            text: 'connects',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' all your devices at home'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
                height: 500,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            hoverColor: Colors.black87,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.black45,
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(30),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, electriciansRoute);
                              },
                              child: SizedBox(
                                width: 320,
                                height: 380,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            FaIcon(
                                              FontAwesomeIcons.globe,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              size: 30,
                                            ),
                                            const SizedBox(height: 20),
                                            Text(
                                              'Easy to Install',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .color),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .color,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Text(
                                                'Available',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 280,
                                          child: Text(
                                            'Clear and easy instructions to get the Hub running.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 280,
                                          child: Text(
                                            'Application can be found in the play store.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 280,
                                          child: Text(
                                            'The application will connect to the Hub automaticly for you.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            hoverColor: Colors.black87,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.black45,
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(30),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, devicesRoute);
                              },
                              child: SizedBox(
                                width: 320,
                                height: 380,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          FaIcon(
                                            FontAwesomeIcons.users,
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            size: 30,
                                          ),
                                          const SizedBox(height: 20),
                                          Text(
                                            'Easy to Use',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .color),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .color,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10))),
                                            child: Text(
                                              'Enjoy',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 280,
                                          child: Text(
                                            'The application will add '
                                            'discovered devices '
                                            'automatically for you.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 280,
                                          child: Text(
                                            'Easy to use user interface with'
                                            ' clear separation between '
                                            'different actions:\nscenes, '
                                            'control devices, '
                                            'routines, bindings.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText2!
                                            .color,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            hoverColor: Colors.black87,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.black45,
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(30),
                                ),
                              ),
                              onPressed: () async {
                                const String url =
                                    'https://github.com/CyBear-Jinni';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: SizedBox(
                                width: 320,
                                height: 380,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            FaIcon(
                                              FontAwesomeIcons.laptopCode,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              size: 30,
                                            ),
                                            const SizedBox(height: 20),
                                            Text(
                                              'Privacy & Open Source',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .color),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .color,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Text(
                                                'Secure',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ])
                                    ]),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 280,
                                          child: Text(
                                            'All your data will be saved '
                                            'locally on your Hub so your '
                                            'will have control of your data.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const FaIcon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 280,
                                          child: Text(
                                            'Open source code with easy '
                                            'structure for adding support '
                                            'for new vendors and new '
                                            'devices types.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText2!
                                            .color,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: 500,
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(30),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black45,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      devicesRoute,
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Supported Vendors',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                              textAlign: TextAlign.center),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      Container(),
                      Container(),
                      SizedBox(
                        width: 550,
                        child: GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          primary: true,
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          crossAxisCount: 3,
                          children: [
                            CachedNetworkImage(
                              imageUrl:
                                  'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                            CachedNetworkImage(
                              imageUrl:
                                  'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180-rw',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                            CachedNetworkImage(
                              imageUrl:
                                  'https://www.opc-router.de/wp-content/uploads/2018/07/mqtt_icon_128px.png',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                            CachedNetworkImage(
                              imageUrl:
                                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.kyAWxT4tVBWL6O2sCJKqaAHaHa%26pid%3DApi&f=1',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                            CachedNetworkImage(
                              imageUrl:
                                  'https://pbs.twimg.com/profile_images/1099243589014573056/JuViMFXW_400x400.png',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 500,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black26,
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      devicesRoute,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Easily Installed',
                          style: TextStyle(
                              fontSize: 40,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                          textAlign: TextAlign.center),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 300),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'For RaspberryPi',
                                  style: TextStyle(
                                    fontSize: 28,
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .color,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    children: const [
                                      TextSpan(text: '1. Download ISO\n'),
                                      TextSpan(
                                          text:
                                              '2. Install ISO to SD card and insert it\n'),
                                      TextSpan(
                                          text:
                                              '3. Open the app on your phone\n'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(),
                            Column(
                              children: [
                                const Text(
                                  'For Linux',
                                  style: TextStyle(
                                      fontSize: 28,
                                      decoration: TextDecoration.underline,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .color,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    children: const [
                                      TextSpan(
                                          text:
                                              '1. Install CyBear Jinni Hub Snap\n'),
                                      TextSpan(
                                          text:
                                              '2. Install MQTT broker snap\n'),
                                      TextSpan(
                                          text:
                                              '3. Open the app on your phone\n'),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.check,
                            color: Colors.green,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'We will add all the smart home devices '
                            'automatically for you',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
