import 'package:cybear_jinni_site/my_singleton.dart';
import 'package:cybear_jinni_site/presentation/route_names.dart';
import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: const Image(
                height: 60,
                image: AssetImage(
                  'assets/images/cbj_app_icon_no_bg.png',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: const Text(
                'CyBear Jinni',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: TextButton(
                onPressed: () {
                  if (MySingleton.getCurrentPageName != aboutRoute) {
                    Navigator.pushNamed(context, aboutRoute);
                  } else {
                    Navigator.pushReplacementNamed(context, aboutRoute);
                  }
                },
                child: Text(
                  'About',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: TextButton(
                onPressed: () {
                  if (MySingleton.getCurrentPageName != faqRoute) {
                    Navigator.pushNamed(context, faqRoute);
                  } else {
                    Navigator.pushReplacementNamed(context, faqRoute);
                  }
                },
                child: Text(
                  'FAQ',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: TextButton(
                onPressed: () {
                  if (MySingleton.getCurrentPageName != setUpRoute) {
                    Navigator.pushNamed(context, setUpRoute);
                  } else {
                    Navigator.pushReplacementNamed(context, setUpRoute);
                  }
                },
                child: Text(
                  'Setup',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: TextButton(
                onPressed: () {
                  if (MySingleton.getCurrentPageName != integrationsRoute) {
                    Navigator.pushNamed(context, integrationsRoute);
                  } else {
                    Navigator.pushReplacementNamed(
                      context,
                      integrationsRoute,
                    );
                  }
                },
                child: Text(
                  'Integrations',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 40,
              ),
              child: const Text(''),
            ),
          ],
        ),
      ],
    );
  }
}
