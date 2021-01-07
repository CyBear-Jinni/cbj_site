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
                padding: const EdgeInsets.all(100),
                width: MediaQuery.of(context).size.width - 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                child: Image.network(
                                  'https://i.ibb.co/QP8MzxB/CBJ-Smart-Plug-1.jpg',
                                ),
                              ),
                              const Text(
                                'Smart Plug',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                    side: const BorderSide(
                                        color: Colors.white60)),
                                color: Colors.grey,
                                textColor:
                                    Theme.of(context).textTheme.bodyText1.color,
                                padding: const EdgeInsets.all(2.0),
                                onPressed: () {},
                                child: const Text(
                                  "More Info",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 150,
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
                                child: Image.network(
                                  'https://i.ibb.co/QP8MzxB/CBJ-Smart-Plug-1.jpg',
                                ),
                              ),
                              const Text(
                                'Smart Plug',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                    side: const BorderSide(
                                        color: Colors.white60)),
                                color: Colors.grey,
                                textColor:
                                    Theme.of(context).textTheme.bodyText1.color,
                                padding: const EdgeInsets.all(2.0),
                                onPressed: () {},
                                child: const Text(
                                  "More Info",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 150,
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
                                child: Image.network(
                                  'https://i.ibb.co/QP8MzxB/CBJ-Smart-Plug-1.jpg',
                                ),
                              ),
                              const Text(
                                'Smart Plug',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                    side: BorderSide(color: Colors.white60)),
                                color: Colors.grey,
                                textColor:
                                    Theme.of(context).textTheme.bodyText1.color,
                                padding: EdgeInsets.all(2.0),
                                onPressed: () {},
                                child: const Text(
                                  "More Info",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
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
