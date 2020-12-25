import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/navigation_drawer/navigation_drawer.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/top_navigation_menu/top_navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';



/// Frequently asked questions
class FAQPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme
                .of(context)
                .primaryColor,
            Theme
                .of(context)
                .accentColor,
            Theme
                .of(context)
                .accentColor,
            Theme
                .of(context)
                .primaryColor
          ],
        ),
      ),
      child: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) =>
            Scaffold(
              drawer:
              sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? NavigationDrawer() : null,
              backgroundColor: Colors.transparent,
              body: Stack(
                children: <Widget>[
                  Scrollbar(
                    isAlwaysShown: true,
                    thickness: 13,
                    controller: _scrollController,
                    child: ListView(
                      controller: _scrollController,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const SizedBox(height: 150,),
                            Container(
                              color: Colors.black12,
                              height: 500,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: <Widget>[

                                      Expanded(
                                        child: Column(
                                            children: <Widget>[
                                              Text('Frequently Asked Questions',
                                                  style: TextStyle(
                                                      fontSize: 50, color:
                                                  Theme
                                                      .of(context)
                                                      .textTheme
                                                      .
                                                  bodyText1
                                                      .color),
                                                  textAlign: TextAlign.center),
                                              const SizedBox(height: 10,),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    horizontal: 100),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: const <Widget>[
                                                    Text(
                                                      'Can I install it myself',
                                                      style: TextStyle(
                                                        fontSize: 20,),
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
                            BottomNavigationMenu(),
                          ],
                        ),
                        const SizedBox(height: 50,),
                      ],
                    ),
                  ),
                  TopNavigationMenu(),
                ],
              ),
            ),
      ),
    );
  }
}