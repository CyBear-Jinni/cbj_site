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
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 30),
                height: 150,
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text(
                    'Supported Vendors',
                    style: TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width - 10,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
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
                        'Tuya Smart',
                        'https://play-lh.googleusercontent.com/KGM9NYnyox9TXwoaY3PKl1PfQ2rTPp1rnpNNtmlbgozJZykhZhGKsL3z9myoj4ccayLS=s180',
                        'https://www.tuya.com',
                      ),
                      DeviceCard(
                        'Xiaomi Yeelight',
                        'https://play-lh.googleusercontent.com/k61DT9oYt_BPdzjAFokLY5e-He-YSl7-eZHeieaVO45XDAwQ6ebegsS_ZsQytca2zWM=s180',
                        'https://www.yeelight.com',
                      ),
                      DeviceCard(
                        'Lifx',
                        'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
                        'https://www.lifx.com/',
                      ),
                      DeviceCard(
                        'Switcher',
                        'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180',
                        'https://switcher.co.il',
                      ),
                      DeviceCard(
                        'MQTT',
                        'https://i.ibb.co/hfRhB0Q/mqtt-logo.png',
                        'https://mqtt.org',
                      ),
                      DeviceCard(
                        'Tasmota',
                        'https://i.ibb.co/XZLGCRd/Tasmota-logo.png',
                        'https://tasmota.github.io',
                      ),
                      DeviceCard(
                        'ESPHome',
                        'https://i.ibb.co/W2YG23s/ESPHome-logo.png',
                        'https://esphome.io',
                      ),
                      DeviceCard(
                        'Node-RED',
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fnodered.org%2Fabout%2Fresources%2Fmedia%2Fnode-red-icon.png&f=1&nofb=1',
                        'https://nodered.org/',
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
