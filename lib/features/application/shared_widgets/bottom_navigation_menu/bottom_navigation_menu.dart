import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu_mobile_tablet.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu_desktop.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Bottom navigation menu for the site
class BottomNavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: BottomNavigationMenuMobileTablet(),
      desktop: BottomNavigationMenuDesktop(),
    );
  }
}
