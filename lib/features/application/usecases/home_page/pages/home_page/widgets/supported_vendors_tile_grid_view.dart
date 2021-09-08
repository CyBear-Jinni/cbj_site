import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportedVendorsTileGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      padding: const EdgeInsets.only(left: 30, right: 30),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      crossAxisCount: 3,
      children: [
        SupportedVendorsTileGridViewNetworkImage(
            'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180'),
        SupportedVendorsTileGridViewNetworkImage(
            'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180-rw'),
        SupportedVendorsTileGridViewNetworkImage(
            'https://www.opc-router.de/wp-content/uploads/2018/07/mqtt_icon_128px.png'),
        SupportedVendorsTileGridViewNetworkImage(
          'https://apps-cdn.athom.com/app/com.paveld.tasmota/17/416f22d3-812c-4d53-81d3-6637f54e5f74/drivers/tasmota_mqtt/assets/images/large.png',
          imageBackgroundColor: Colors.white,
        ),
        SupportedVendorsTileGridViewNetworkImage(
            'https://pbs.twimg.com/profile_images/1099243589014573056/JuViMFXW.png'),
      ],
    );
  }
}

class SupportedVendorsTileGridViewNetworkImage extends StatelessWidget {
  SupportedVendorsTileGridViewNetworkImage(this.imageUrl,
      {this.imageBackgroundColor = Colors.transparent});

  String imageUrl;
  Color imageBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: imageBackgroundColor,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
