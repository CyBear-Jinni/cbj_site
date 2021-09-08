import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/set_up_page/set_up_page_content_desktop.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/set_up_page/set_up_page_content_mobile_tablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Set Up page content
class SetUpPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SetUpPageContentMobileTablet(),
      tablet: SetUpPageContentMobileTablet(),
      desktop: SetUpPageContentDesktop(),
    );
  }
}
