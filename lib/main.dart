import 'package:flutter/material.dart';
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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
            Image.asset("images/tent.png",fit: BoxFit.fill, height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width),
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
                      SubVC: HomePageFood(dbUrl: 'https://elkhyma.com/ramadan/meals/files/meals.php', title: "Meals",),
                    )),
          );
        },
        tooltip: 'Enter the app',
        child: Icon(Icons.not_started_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
