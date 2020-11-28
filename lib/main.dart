import 'package:cybear_jinni_site/core/my_singleton.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/landing_page.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/about_page/about_page.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/devices_page/devices_page.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/faq_page/faq_page.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/home_page/home_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(

      /// Use https://lingohub.com/developers/supported-locales/language-designators-with-regions
      /// Or https://www.contentstack.com/docs/developers/multilingual-content/list-of-supported-languages/
      /// To find your language letters, and add the file letters below
      EasyLocalization(
          supportedLocales: const <Locale>[
        Locale('en', 'US'),
        Locale('he', 'IL')
      ],
          path: 'assets/translations', // <-- change patch to your
          fallbackLocale: const Locale('en', 'US'),
          child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      //   // This makes the visual density adapt to the platform that you run
      //   // the app on. For desktop platforms, the controls will be smaller and
      //   // closer together (more dense) than on mobile platforms.
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),


      title: 'CyBear Jinni Web Site',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.indigo,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white70),
        ),
        fontFamily: 'gidole_regular',
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          MySingleton.setCurrentPageName('landingPage');
          return LandingPage();
          },
    '/home': (BuildContext context)
    {
      MySingleton.setCurrentPageName('homePage');
      return LandingPage();
    },
        //        '/home_settings': (BuildContext context) => SettingsPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] == 'homePage') {
          MySingleton.setCurrentPageName('homePage');
          return MaterialPageRoute(
              builder: (BuildContext context) => HomePage());
        }
        else if (pathElements[0] == 'aboutPage') {
          MySingleton.setCurrentPageName('aboutPage');
          return MaterialPageRoute(
              builder: (BuildContext context) => AboutPage());
        }
        else if (pathElements[0] == 'faqPage') {
          MySingleton.setCurrentPageName('faqPage');
          return MaterialPageRoute(
        builder: (BuildContext context) => FAQPage());
        }
        else if (pathElements[0] == 'devicesPage') {
          MySingleton.setCurrentPageName('devicesPage');
          return MaterialPageRoute(
              builder: (BuildContext context) => DevicesPage());
        }
        else {
          MySingleton.setCurrentPageName('homePage');
          MaterialPageRoute(
              builder: (BuildContext context) => HomePage());
        }
        return null;
      },
    );
  }
}