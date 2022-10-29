import 'dart:ui';

import 'package:cybear_jinni_site/presentation/home_page/widgets/supported_vendors_tile_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomePageFirstPart extends StatelessWidget {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'o5owbiQahnY',
    params: const YoutubePlayerParams(
      startAt: Duration(minutes: 2),
    ),
  );

  final List<String> companysLogs = [
    'https://play-lh.googleusercontent.com/aFWiT2lTa9CYBpyPjfgfNHd0r5puwKRGj2rHpdPTNrz2N9LXgN_MbLjePd1OTc0E8Rl1=s180',
    'https://play-lh.googleusercontent.com/UF16mldRKpQUUWhRZlDnT1FjkAjWSu9NXVBEDoTgScI_eo_6yEL0oKtc2-OvPXcG3PmN=s180',
    'https://play-lh.googleusercontent.com/cwAyt0LIs4cyXSs2jr79xjAxsuq4KoBTZNq__gpeQvupH-8PElGn6kiddx8-WfG8wEPl=s180',
    'https://play-lh.googleusercontent.com/Qrq9zB_-bWuAD0ETPeBRTsRHOSjmW_uzmexY5rF7wo2JeNc-oLuvsQSYdg0Uxsq6mkA=s180',
    'https://play-lh.googleusercontent.com/k61DT9oYt_BPdzjAFokLY5e-He-YSl7-eZHeieaVO45XDAwQ6ebegsS_ZsQytca2zWM=s180',
    'https://play-lh.googleusercontent.com/KGM9NYnyox9TXwoaY3PKl1PfQ2rTPp1rnpNNtmlbgozJZykhZhGKsL3z9myoj4ccayLS=s180',
    'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
    'https://i.ibb.co/THRX9kq/node-RED-logo.png',
    'https://i.ibb.co/hfRhB0Q/mqtt-logo.png',
    'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180',
    'https://play-lh.googleusercontent.com/ocFF7mcDTJzr1PXr6k4q1Q2-5xNFUVODqluwnD60DiTsHgTalrVTqi7kk0H8JnW7GLEv=s180',
    'https://i.ibb.co/XZLGCRd/Tasmota-logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return ColoredBox(
      // height: screenSize.height,
      // width: screenSize.width,
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only(right: 10, left: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: screenSize.height / 2.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Center(
                              child: Text(
                                'smart home',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Text(
                              '📱 CyBear Jinni App is the app to control CyBear Jinni Hub 💡 remotely from your Android, IOS and Web Browser. If you have ever wondered "Is there an open-source project to make my own smart home?", This is part of one.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 80),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      width: screenSize.width / 2,
                      height: screenSize.height / 2.3,
                      child: YoutubePlayerControllerProvider(
                        // Provides controller to all the widget below it.
                        controller: _controller,
                        child: const YoutubePlayerIFrame(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  flex: 18,
                  child: SizedBox(),
                ),
                Flexible(
                  flex: 16,
                  child: Stack(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: const SizedBox(),
                      ),
                      ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10.0,
                            sigmaY: 10.0,
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.5),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: const Text(
                                        'Supported Vendor',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 20,
                                          left: 200,
                                          right: 200,
                                        ),
                                        height: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[0],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[1],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[2],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[3],
                                            ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[4],
                                            // ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[5],
                                            // ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[6],
                                            // ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[7],
                                            // ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[8],
                                            // ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[9],
                                            // ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[10],
                                            // ),
                                            // SupportedVendorsTileGridViewNetworkImage(
                                            //   companysLogs[11],
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
