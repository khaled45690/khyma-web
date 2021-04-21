
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:sanus/khaled/Screens/QuranScreen.dart';
// import 'HomePageSeries.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
// import 'package:flutter/services.dart';
// import 'NotificationServices.dart';
// import 'HomePageFood.dart';
// import 'package:web_browser_detect/web_browser_detect.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sanus/BackGroundTemplate.dart';
import 'package:sanus/khaled/Screens/MainScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// 1
// 2
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await MobileAds.instance.initialize();
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final browser = Browser();
    // print('${browser.browser} ${browser.version}');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'الخيمة',
      // localizationsDelegates: [GlobalMaterialLocalizations.delegate],

          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          // ...

      supportedLocales: [const Locale('en'), const Locale('ar')],
      theme: ThemeData(
        fontFamily: "STC",

        primarySwatch: Colors.red,
        scaffoldBackgroundColor: const Color(0xFFD83D3A),
        unselectedWidgetColor: Color(0xFFAD411F),
      ),
      home: MyHomePage(title: "Home",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  String os;
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BackGroundTemplate(
        title: "Elkhyma",
        SubVC: MainScreen(),
      ),
    );
  }
}
