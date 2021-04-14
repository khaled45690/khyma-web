import 'package:flutter/material.dart';
import 'package:sanus/khaled/Screens/MainScreen.dart';
import 'package:sanus/khaled/Screens/QuranScreen.dart';
import 'HomePage.dart';
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


// admob start  ----------------------------------------------
import 'package:google_mobile_ads/google_mobile_ads.dart';
// admob end  ----------------------------------------------

void main() {
  // admob start  ----------------------------------------------
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  // admob end  ----------------------------------------------

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

  // admob start  ----------------------------------------------
  final BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-3940256099942544/8865242552',
    size: AdSize.banner,
    request: AdRequest(),
    listener: AdListener(),
  );

  final AdListener listener = AdListener(
    // Called when an ad is successfully received.
    onAdLoaded: (Ad ad) => print('Ad loaded.'),
    // Called when an ad request failed.
    onAdFailedToLoad: (Ad ad, LoadAdError error) {
      ad.dispose();
      print('Ad failed to load: $error');
    },
    // Called when an ad opens an overlay that covers the screen.
    onAdOpened: (Ad ad) => print('Ad opened.'),
    // Called when an ad removes an overlay that covers the screen.
    onAdClosed: (Ad ad) => print('Ad closed.'),
    // Called when an ad is in the process of leaving the application.
    onApplicationExit: (Ad ad) => print('Left application.'),
  );
  // admob end  ----------------------------------------------


  @override
  void initState() {



    // admob start  ----------------------------------------------
    myBanner.load();
    // admob end  ----------------------------------------------


    // TODO: implement initState
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: const Color(0xFF1D1D1D),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // admob start  ----------------------------------------------
            Container(
              alignment: Alignment.center,
              child: AdWidget(ad: myBanner),
              width: myBanner.size.width.toDouble(),
              height: myBanner.size.height.toDouble(),
            ),
            // admob end  ----------------------------------------------
            Image.asset("images/tent.jpg",fit: BoxFit.contain, height: MediaQuery.of(context).size.height - 100,width: MediaQuery.of(context).size.width),




            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // DateTime dob = DateTime.parse('1967-10-12');
          // Duration dur =  DateTime.now().difference(dob);
          Duration dur = Duration(days: 0, hours: 0, minutes: 0, seconds: 5);
          // NotificationServices().showNotification(context, HomePage(), dur);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BackGroundTemplate(
                      title: "ddddd",
                      SubVC: MainScreen(),
                    )),
          );
        },
        tooltip: 'Enter the app',
        child: Icon(Icons.not_started_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
