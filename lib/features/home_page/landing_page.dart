import 'package:cybear_jinni_site/features/home_page/tabs/about.dart';
import 'package:cybear_jinni_site/features/home_page/tabs/home.dart';
import 'package:cybear_jinni_site/features/home_page/tabs/news.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor
          ],
        ),
      ),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: TabBarView(children: [
            HomeTab(),
            AboutTab(),
            NewsTab(),
          ]),
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Theme.of(context).textTheme.bodyText2.color,
              labelColor: Theme.of(context).textTheme.bodyText1.color,
              tabs: <Widget>[
                Tab(
                  icon: const Icon(FontAwesomeIcons.history),
                  child: const Text(
                    'Home_Page',
                  ).tr(),
                ),
                Tab(
                  icon: const Icon(FontAwesomeIcons.cube),
                  child: const Text(
                    'About',
                  ).tr(),
                ),
                Tab(
                  icon: const Icon(FontAwesomeIcons.solidLightbulb),
                  child: const Text(
                    'News',
                  ).tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
