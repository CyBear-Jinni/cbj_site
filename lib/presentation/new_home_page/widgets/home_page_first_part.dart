import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cybear_jinni_site/my_singleton.dart';
import 'package:cybear_jinni_site/presentation/home_page/widgets/supported_vendors_tile_grid_view.dart';
import 'package:cybear_jinni_site/presentation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
    'https://play-lh.googleusercontent.com/Qrq9zB_-bWuAD0ETPeBRTsRHOSjmW_uzmexY5rF7wo2JeNc-oLuvsQSYdg0Uxsq6mkA=s180',
    'https://play-lh.googleusercontent.com/cwAyt0LIs4cyXSs2jr79xjAxsuq4KoBTZNq__gpeQvupH-8PElGn6kiddx8-WfG8wEPl=s180',
    'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
    'https://i.ibb.co/THRX9kq/node-RED-logo.png',
    'https://i.ibb.co/hfRhB0Q/mqtt-logo.png',
    'https://i.ibb.co/XZLGCRd/Tasmota-logo.png',
    'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180',
    'https://play-lh.googleusercontent.com/ocFF7mcDTJzr1PXr6k4q1Q2-5xNFUVODqluwnD60DiTsHgTalrVTqi7kk0H8JnW7GLEv=s180',
    'https://play-lh.googleusercontent.com/k61DT9oYt_BPdzjAFokLY5e-He-YSl7-eZHeieaVO45XDAwQ6ebegsS_ZsQytca2zWM=s180',
    'https://play-lh.googleusercontent.com/KGM9NYnyox9TXwoaY3PKl1PfQ2rTPp1rnpNNtmlbgozJZykhZhGKsL3z9myoj4ccayLS=s180',
    'https://play-lh.googleusercontent.com/UF16mldRKpQUUWhRZlDnT1FjkAjWSu9NXVBEDoTgScI_eo_6yEL0oKtc2-OvPXcG3PmN=s180',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox.expand(
          child: CachedNetworkImage(
            imageUrl:
                // 'https://wallpaperaccess.com/full/3644270.jpg'
                // 'https://cdn.vox-cdn.com/thumbor/qCHcHkgH7TAc2SCOTQLj9UkQLQo=/0x0:1200x739/2420x1613/filters:focal(504x274:696x466)/cdn.vox-cdn.com/uploads/chorus_image/image/56981041/slack_imgs.0.jpg'
                // 'https://cdn.vox-cdn.com/thumbor/p8mU0Z3el-wDtvjMF62Wz4hCets=/0x0:1499x1000/1200x800/filters:focal(631x381:869x619)/cdn.vox-cdn.com/uploads/chorus_image/image/56785169/LIFX_Mini_LED_Lighting_Image.0.jpg'

                // 'https://images.macrumors.com/t/akS-rfKtypWuIFOGfmWE2nZz-ac=/1600x/http://images.macrumors.com/article-new/2017/11/lifxzlightstrips.jpg'
                // 'https://www.self-build.co.uk/wp-content/uploads/2018/01/Loxone-lighting-system.png'
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F79%2Fd3%2F90%2F79d390feeb4e5576a557e69cdfd8a36b.jpg&f=1&nofb=1&ipt=7a895450c06b7f850751842f06f5180d4f85f5cc731d680a989f4c381d057077&ipo=images'
            // 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.loxone.com%2Fenus%2Fwp-content%2Fuploads%2Fsites%2F13%2F2016%2F10%2FPH_Loxone-Showhome-Living-Room.jpg&f=1&nofb=1&ipt=08ed13561bee015a97d1a766368a25a8ee5251f30fb3f7377d409c9008e4cf73&ipo=images'
            // 'https://promotion-static.tuyaus.com/static/139914518422863872.jpg'
// 'https://9to5toys.com/wp-content/uploads/sites/5/2018/09/lifx-tile-starter-kit.jpg'
            ,
            fit: BoxFit.fill,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Column(
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
                        child: Container(
                          constraints: const BoxConstraints(maxWidth: 500),
                          height: screenSize.height / 2.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: <Widget>[
                                  Text(
                                    'smart home',
                                    style: TextStyle(
                                      fontSize: 65,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 2.5
                                        ..color = HexColor('#000000'),
                                    ),
                                  ),
                                  // Solid text as fill.
                                  const Text(
                                    'smart home',
                                    style: TextStyle(
                                      fontSize: 65,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              BorderTextWithShadow(
                                "If you're a person who values his time and believes in privacy and open source we have the product for you.\n",
                              ),
                              BorderTextWithShadow(
                                'It automatically lets you control your smart home appliances with a simple UI and create personalized automation for better control.\n',
                              ),
                              BorderTextWithShadow(
                                'Using CBJ you can create a smart home Hub that communicates with your devices and an app to control those devices.',
                              ),
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
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.zero,
                        ),
                      ),
                      onPressed: () {
                        if (MySingleton.getCurrentPageName !=
                            integrationsRoute) {
                          Navigator.pushNamed(context, integrationsRoute);
                        } else {
                          Navigator.pushReplacementNamed(
                            context,
                            integrationsRoute,
                          );
                        }
                      },
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5.0,
                            sigmaY: 2.0,
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
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: const Text(
                                        'Supported Vendor',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
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
                                        ),
                                        height: 60,
                                        width: screenSize.width / 1.1,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
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
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[4],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[5],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[6],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[7],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[8],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[9],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[10],
                                            ),
                                            SupportedVendorsTileGridViewNetworkImage(
                                              companysLogs[11],
                                            ),
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BorderTextWithShadow extends StatelessWidget {
  BorderTextWithShadow(this.text);

  String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: 22,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1
              ..color = HexColor('#000000'),
            shadows: <Shadow>[
              Shadow(
                offset: const Offset(0, 2),
                blurRadius: 2.0,
                color: HexColor('#6C6C6C'),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        // Solid text as fill.
        Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
