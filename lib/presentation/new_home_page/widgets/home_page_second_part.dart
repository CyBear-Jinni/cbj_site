import 'dart:ui';

import 'package:cybear_jinni_site/presentation/home_page/widgets/easy_to_set_up_benefit_block.dart';
import 'package:cybear_jinni_site/presentation/home_page/widgets/easy_to_use_benefit_block.dart';
import 'package:cybear_jinni_site/presentation/home_page/widgets/privacy_and_open_source_benefit_block.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageSecondtPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return ColoredBox(
      // height: screenSize.height,
      // width: screenSize.width,
      color: Colors.lightGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'CyBear Jinni ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Connects',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' all your devices with Open Source',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(),
                const SizedBox(),
                const SizedBox(),
                EasyToSetUpBenefitBlock(),
                EasyToUseBenefitBlock(),
                PrivacyAndOpenSourceBenefitBlock(),
                const SizedBox(),
                const SizedBox(),
                const SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
