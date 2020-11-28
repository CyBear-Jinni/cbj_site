import 'package:cybear_jinni_site/features/application/shared_widgets/contact_us_popup.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


/// Top navigation menu for the site
class TopNavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipPath(
              clipper: CrosRightSizde(),
              child: Container(
                color: Colors.black87,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, 'homePage',
                        );
                      },
                      child: const
                      Tab(
                        icon: SizedBox(
                          width: 20,
                          child: Image(
                            image: AssetImage(
                              'assets/fan_art/after_editing/logo_no_background.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),),
                    const SizedBox(width: 20,),

                    GestureDetector(
                      onTap: () {
                          showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ContactUsPopup();
                          },
                        );
                      },
                      child: const Tab(
                        icon: Icon(FontAwesomeIcons.phoneAlt,
                            color: Colors.white),
                        child: Text(
                          'Contact Us',
                        ),
                      ),
                    ),

                    const SizedBox(width: 40,)

                  ],
                ),
              ),
            ),

            const SizedBox(
              width: 500,
              height: 1,
            ),

            ClipPath(
              clipper: CrosLeftSizde(),
              child: Container(
                color: Colors.black87,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(width: 40,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, 'aboutPage',
                        );
                      },
                      child: const Tab(
                        icon: Icon(FontAwesomeIcons.addressCard,
                            color: Colors.white),
                        child: Text(
                          'About',
                        ),
                      ),
                    ),

                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, 'faqPage',
                        );
                      },
                      child: const Tab(
                        icon: Icon(FontAwesomeIcons.questionCircle,
                            color: Colors.white),
                        child: Text(
                          'FAQ',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, 'devicesPage',
                        );
                      },
                      child: const Tab(
                        icon: Icon(FontAwesomeIcons.lightbulb,
                            color: Colors.white),
                        child: Text(
                          'Devices',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, 'homePage',
                        );
                      },
                      child: const Tab(
                        icon: Icon(FontAwesomeIcons.home,
                            color: Colors.white),
                        child: Text(
                          'Home',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}