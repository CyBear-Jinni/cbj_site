import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/about_page/about_page_content_desktop.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/about_page/about_page_content_mobile_tablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// About page content
class AboutPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutPageContentMobileTablet(),
      desktop: AboutPageContentDesktop(),
    );
  }
}
