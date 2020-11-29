import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/home_page/home_page_content_mobile_tablet.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/home_page/home_page_content_desktop.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';


/// Home page content
class HomePageContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomePageContentMobileTablet(),
      desktop: HomePageContentDesktop(),
    );
  }
}