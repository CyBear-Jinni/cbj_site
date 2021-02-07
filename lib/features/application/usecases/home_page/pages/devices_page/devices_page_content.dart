import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/devices_page/devices_page_content_desktop.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/devices_page/devices_page_content_mobile_tablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Devices page content
class DevicesPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DevicesPageContentMobileTablet(),
      tablet: DevicesPageContentMobileTablet(),
      desktop: DevicesPageContentDesktop(),
    );
  }
}
