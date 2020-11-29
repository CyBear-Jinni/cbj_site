import 'package:cybear_jinni_site/features/application/shared_widgets/top_navigation_menu/top_navigation_menu_mobile.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/top_navigation_menu/top_navigation_menu_tablet_desktop.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';



/// Top navigation menu for the site
class TopNavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TopNavigationMenuMobile(),
      tablet: TopNavigationMenuTabletDesktop(),
    );
  }
}