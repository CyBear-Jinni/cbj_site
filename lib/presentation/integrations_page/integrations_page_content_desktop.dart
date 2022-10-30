import 'package:cybear_jinni_site/presentation/integrations_page/device_card.dart';
import 'package:cybear_jinni_site/presentation/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:flutter/material.dart';

/// Integrations page content for the desktop
class IntegrationsPageContentDesktop extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
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
                padding: const EdgeInsets.only(bottom: 20),
                height: 180,
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text(
                    'Supported Vendors',
                    style: TextStyle(
                      fontSize: 50,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
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
                padding: const EdgeInsets.symmetric(vertical: 100),
                width: MediaQuery.of(context).size.width - 200,
                child: Container(
                  margin: const EdgeInsets.only(left: 300, right: 300),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: true,
                    childAspectRatio: (MediaQuery.of(context).size.width) /
                        (MediaQuery.of(context).size.height / 0.5),
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    crossAxisCount: 3,
                    children: [
                      DeviceCard(
                        'Google',
                        'https://play-lh.googleusercontent.com/aFWiT2lTa9CYBpyPjfgfNHd0r5puwKRGj2rHpdPTNrz2N9LXgN_MbLjePd1OTc0E8Rl1=s180',
                        'https://www.google.com/chromecast/built-in/',
                      ),
                      DeviceCard(
                        'HP',
                        'https://play-lh.googleusercontent.com/UF16mldRKpQUUWhRZlDnT1FjkAjWSu9NXVBEDoTgScI_eo_6yEL0oKtc2-OvPXcG3PmN=s180',
                        'https://www.hp.com/us-en/home.html',
                      ),
                      DeviceCard(
                        'Smart Life',
                        'https://play-lh.googleusercontent.com/Qrq9zB_-bWuAD0ETPeBRTsRHOSjmW_uzmexY5rF7wo2JeNc-oLuvsQSYdg0Uxsq6mkA=s180',
                        'https://www.tuya.com',
                      ),
                      DeviceCard(
                        'Tuya Smart',
                        'https://play-lh.googleusercontent.com/KGM9NYnyox9TXwoaY3PKl1PfQ2rTPp1rnpNNtmlbgozJZykhZhGKsL3z9myoj4ccayLS=s180',
                        'https://www.tuya.com',
                      ),
                      DeviceCard(
                        'Xiaomi Yeelight',
                        'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
                        'https://www.yeelight.com',
                      ),
                      DeviceCard(
                        'Lifx',
                        'https://play-lh.googleusercontent.com/k61DT9oYt_BPdzjAFokLY5e-He-YSl7-eZHeieaVO45XDAwQ6ebegsS_ZsQytca2zWM=s180',
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
                      // DeviceCard(
                      //   'ESPHome',
                      //   'https://i.ibb.co/W2YG23s/ESPHome-logo.png',
                      //   'https://esphome.io',
                      // ),
                      DeviceCard(
                        'Shelly',
                        'https://play-lh.googleusercontent.com/cwAyt0LIs4cyXSs2jr79xjAxsuq4KoBTZNq__gpeQvupH-8PElGn6kiddx8-WfG8wEPl=s180',
                        'https://shelly.cloud/',
                      ),
                      DeviceCard(
                        'Node-RED',
                        'https://i.ibb.co/THRX9kq/node-RED-logo.png',
                        'https://nodered.org/',
                      ),
                      DeviceCard(
                        'Jinvoo Smart',
                        'https://play-lh.googleusercontent.com/ocFF7mcDTJzr1PXr6k4q1Q2-5xNFUVODqluwnD60DiTsHgTalrVTqi7kk0H8JnW7GLEv=s180',
                        'http://www.xenon.cn/',
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
