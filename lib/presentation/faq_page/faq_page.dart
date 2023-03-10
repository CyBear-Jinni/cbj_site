import 'package:cybear_jinni_site/presentation/faq_page/faq_page_content.dart';
import 'package:cybear_jinni_site/presentation/shared_widgets/top_navigation_menu/top_navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Frequently asked questions
class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme.of(context).primaryColor,
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).primaryColor
          ],
        ),
      ),
      child: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) =>
            SelectionArea(
          child: Scaffold(
            drawer:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? const NavigationDrawer(
                        children: [],
                      )
                    : null,
            backgroundColor: Colors.transparent,
            body: Stack(
              children: <Widget>[
                FaqPageContent(),
                TopNavigationMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
