import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/integrations_page/integrations_page_content_desktop.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/integrations_page/integrations_page_content_mobile_tablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Integrations page content
class IntegrationsPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: IntegrationsPageContentMobileTablet(),
      tablet: IntegrationsPageContentMobileTablet(),
      desktop: IntegrationsPageContentDesktop(),
    );
  }
}
