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
          'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
        ),
        SupportedVendorsTileGridViewNetworkImage(
          'https://play-lh.googleusercontent.com/k61DT9oYt_BPdzjAFokLY5e-He-YSl7-eZHeieaVO45XDAwQ6ebegsS_ZsQytca2zWM=s180',
        ),

        SupportedVendorsTileGridViewNetworkImage(
          'https://play-lh.googleusercontent.com/KGM9NYnyox9TXwoaY3PKl1PfQ2rTPp1rnpNNtmlbgozJZykhZhGKsL3z9myoj4ccayLS=s180',
        ),
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://i.ibb.co/hfRhB0Q/mqtt-logo.png',
        // ),
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://i.ibb.co/XZLGCRd/Tasmota-logo.png',
        //   imageBackgroundColor: Colors.white,
        // ),
        //
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180',
        // ),
        // SupportedVendorsTileGridViewNetworkImage(
        //   'https://i.ibb.co/W2YG23s/ESPHome-logo.png',
        // ),
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
        fit: BoxFit.contain,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
