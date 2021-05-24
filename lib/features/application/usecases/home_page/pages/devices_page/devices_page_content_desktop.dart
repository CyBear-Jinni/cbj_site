import 'package:cached_network_image/cached_network_image.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Devices page content for the desktop
class DevicesPageContentDesktop extends StatelessWidget {
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
                        Text('Our Devices',
                            style: TextStyle(
                                fontSize: 50,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
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
                        color: Theme.of(context).textTheme.bodyText1.color,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1.color,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1.color,
                      ),
                    )),
                padding: const EdgeInsets.symmetric(vertical: 100),
                width: MediaQuery.of(context).size.width - 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              border: Border.all(color: Colors.white30)),
                          width: 320,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://i.ibb.co/QP8MzxB/CBJ-Smart-Plug-1.jpg',
                                  fit: BoxFit.scaleDown,
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              const Text(
                                'Smart Plug',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.grey,
                                  ),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(2),
                                  ),
                                  side: MaterialStateProperty.all(
                                    BorderSide.lerp(
                                        const BorderSide(color: Colors.white60),
                                        const BorderSide(color: Colors.white60),
                                        22),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'More Info',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              border: Border.all(color: Colors.white30)),
                          width: 320,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://i.ibb.co/QP8MzxB/CBJ-Smart-Plug-1.jpg',
                                  fit: BoxFit.scaleDown,
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              const Text(
                                'Smart Plug',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.grey,
                                  ),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(2),
                                  ),
                                  side: MaterialStateProperty.all(
                                    BorderSide.lerp(
                                        const BorderSide(color: Colors.white60),
                                        const BorderSide(color: Colors.white60),
                                        22),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'More Info',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.white30),
                          ),
                          width: 320,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://i.ibb.co/QP8MzxB/CBJ-Smart-Plug-1.jpg',
                                  fit: BoxFit.scaleDown,
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              const Text(
                                'Smart Plug',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.grey,
                                  ),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(2),
                                  ),
                                  side: MaterialStateProperty.all(
                                    BorderSide.lerp(
                                        const BorderSide(color: Colors.white60),
                                        const BorderSide(color: Colors.white60),
                                        22),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'More Info',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
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
