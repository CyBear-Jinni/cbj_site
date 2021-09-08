import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/integrations_page/device_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Integrations page content for the mobile and tablet screen size
class IntegrationsPageContentMobileTablet extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      thickness: 13,
      controller: _scrollController,
      child: ListView(
        controller: _scrollController,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Colors.black26,
                height: 250,
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Supported Vendors',
                            style: TextStyle(
                                fontSize: 30,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black38,
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1!.color!,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1!.color!,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1!.color!,
                      ),
                    )),
                padding: const EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width - 10,
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: true,
                    childAspectRatio: (MediaQuery.of(context).size.width) /
                        (MediaQuery.of(context).size.height / 2.5),
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    crossAxisCount: 1,
                    children: [
                      DeviceCard(
                        'Xiaomi Yeelight',
                        'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
                        'https://www.yeelight.com',
                      ),
                      DeviceCard(
                        'Switcher',
                        'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180-rw',
                        'https://switcher.co.il',
                      ),
                      DeviceCard(
                        'MQTT',
                        'https://www.opc-router.de/wp-content/uploads/2018/07/mqtt_icon_128px.png',
                        'https://mqtt.org',
                      ),
                      DeviceCard(
                        'Tasmota',
                        'https://apps-cdn.athom.com/app/com.paveld.tasmota/17/416f22d3-812c-4d53-81d3-6637f54e5f74/drivers/tasmota_mqtt/assets/images/large.png',
                        'https://tasmota.github.io',
                      ),
                      DeviceCard(
                        'ESPHome',
                        'https://pbs.twimg.com/profile_images/1099243589014573056/JuViMFXW.png',
                        'https://esphome.io',
                      ),
                    ],
                  ),
                ),
              ),
              BottomNavigationMenu(),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
