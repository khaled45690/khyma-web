import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:sanus/khaled/Screens/MainScreen.dart';
import 'package:sanus/khaled/Screens/QuranScreen.dart';
import 'HomePageSeries.dart';
import 'package:sanus/BackGroundTemplate.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/services.dart';
import 'NotificationServices.dart';
import 'HomePageFood.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:web_browser_detect/web_browser_detect.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_analytics/observer.dart';

// admob start  ----------------------------------------------
import 'package:google_mobile_ads/google_mobile_ads.dart';
// admob end  ----------------------------------------------

Future<void> main() async{
  // admob start  ----------------------------------------------
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await MobileAds.instance.initialize();
  // admob end  ----------------------------------------------
  // if (kIsWeb) {
  //   // initialiaze the facebook javascript SDK
  //   FacebookAuth.instance.webInitialize(
  //     appId: "453852422571857",//<-- YOUR APP_ID
  //     cookie: true,
  //     xfbml: true,
  //     version: "v10.0",
  //   );
  // }
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
        title: "ddddd",
        SubVC: MainScreen(),
      ),

      // Container(
      //   color: const Color(0xFF1D1D1D),
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //
      //       // admob start  ----------------------------------------------
      //       Container(
      //         alignment: Alignment.center,
      //         child: AdWidget(ad: myBanner),
      //         width: myBanner.size.width.toDouble(),
      //         height: myBanner.size.height.toDouble(),
      //       ),
      //       // admob end  ----------------------------------------------
      //       Image.asset("images/tent.jpg",fit: BoxFit.contain, height: MediaQuery.of(context).size.height - 100,width: MediaQuery.of(context).size.width),
      //
      //
      //
      //
      //       // ),
      //     ],
      //   ),
      // ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // DateTime dob = DateTime.parse('1967-10-12');
      //     // Duration dur =  DateTime.now().difference(dob);
      //     Duration dur = Duration(days: 0, hours: 0, minutes: 0, seconds: 5);
      //     // NotificationServices().showNotification(context, HomePage(), dur);
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => BackGroundTemplate(
      //                 title: "ddddd",
      //                 SubVC: MainScreen(),
      //               )),
      //     );
      //   },
      //   tooltip: 'Enter the app',
      //   child: Icon(Icons.not_started_outlined),
      // ), // This trailing comma makes auto-formatting nicer for build methods.




    );
  }
}
