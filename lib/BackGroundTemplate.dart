import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:sanus/khaled/Widgets/adSense.dart';
import 'main.dart';
import 'PrayerTimes.dart';
import 'HomePage.dart';
import 'khaled/Screens/QuranScreen.dart';
import 'package:sanus/khaled/Screens/SettingScreen.dart';
import 'HomePageFood.dart';

class BackGroundTemplate extends StatefulWidget {
  BackGroundTemplate({Key key, this.title, this.SubVC}) : super(key: key);

  final String title;
  final Widget SubVC;

  @override
  _BackGroundTemplateState createState() => new _BackGroundTemplateState();
}

class _BackGroundTemplateState extends State<BackGroundTemplate>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int _selectedDestination = 0;
  bool checkedVal = false;

  @override
  void initState() {
    super.initState();
    controller = new TabController(
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD83D3A),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Row(children: [
          // Checkbox(
          //   value: checkedVal,
          //   onChanged: (newValue) {
          //     setState(() {
          //       checkedVal = newValue;
          //     });
          //   },
          //   checkColor: Color(0xFFFFFFFF),
          //   activeColor: Color(0xFFAD411F),
          // ),
          // IconButton(
          //   icon: Icon(
          //     Icons.ios_share,
          //   ),
          //   onPressed: () {
          //     // do something
          //   },
          // ),
        ]),
      ),
      endDrawer: BackdropFilter(
        filter: new ImageFilter.blur(sigmaY: 10, sigmaX: 10),
        child: Theme(
          data: Theme.of(context).copyWith(
            // Set the transparency here
            // canvasColor: Colors.white.withOpacity(0.8), //or any other color you want. e.g Colors.blue.withOpacity(0.5)
            canvasColor: Color(0xFFE8E8E8),
          ),
          child: Drawer(
            child: ListTileTheme(
              //selectedTileColor: Colors.white,
              iconColor: Color(0xFFAD411F),
              selectedColor: Color(0xFFAD411F),
              selectedTileColor: Colors.grey,
              textColor: Color(0xFFAD411F),
              child: Container(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    // new Container(
                    //   child: new DrawerHeader(child: new CircleAvatar(foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,)),
                    //
                    // ),
                    Container(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'القائمة',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFAD411F)),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    ListTile(
                      trailing: Icon(Icons.home_outlined),
                      title: Text(
                        'الرئيسية',
                        textDirection: TextDirection.rtl,
                      ),
                      selected: _selectedDestination == 0,
                      onTap: () => selectDestination(0),
                    ),
                    ListTile(
                      trailing: Icon(Icons.restaurant),
                      title: Text(
                        'تاكل إيه؟',
                        textDirection: TextDirection.rtl,
                      ),
                      selected: _selectedDestination == 1,
                      onTap: () => selectDestination(1),
                    ),
                    ListTile(
                      trailing: Icon(Icons.live_tv_outlined),
                      title: Text(
                        'تشوف إيه؟',
                        textDirection: TextDirection.rtl,
                      ),
                      selected: _selectedDestination == 2,
                      onTap: () => selectDestination(2),
                    ),
                    ListTile(
                      trailing: Icon(Icons.not_listed_location_outlined),
                      title: Text(
                        'تروح فين؟',
                        textDirection: TextDirection.rtl,
                      ),
                      selected: _selectedDestination == 3,
                      onTap: () => selectDestination(3),
                    ),
                    ListTile(
                      trailing: Icon(Icons.nights_stay_outlined),
                      title: Text(
                        'مواقيت الصلاة',
                        textDirection: TextDirection.rtl,
                      ),
                      selected: _selectedDestination == 4,
                      onTap: () => selectDestination(4),
                    ),
                    ListTile(
                      trailing: Icon(Icons.menu_book_outlined),
                      title: Text(
                        'الختمة',
                        textDirection: TextDirection.rtl,
                      ),
                      selected: _selectedDestination == 5,
                      onTap: () => selectDestination(5),
                    ),
                    // ListTile(
                    //   trailing: Icon(Icons.content_paste_sharp),
                    //   title: Text(
                    //     'خطة اليوم',
                    //     textDirection: TextDirection.rtl,
                    //   ),
                    //   selected: _selectedDestination == 6,
                    //   onTap: () => selectDestination(6),
                    // ),
                    // ListTile(
                    //   trailing: Icon(Icons.settings_outlined),
                    //   title: Text(
                    //     'الإعدادات',
                    //     textDirection: TextDirection.rtl,
                    //   ),
                    //   selected: _selectedDestination == 7,
                    //   onTap: () => selectDestination(7),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(children: [
        // Container(color: Colors.amber, width: 50, height: 50),
        // here was the yellow box ⬆︎
        // adsenseAdsView(),
        Container(
          //clipBehavior: Clip.none,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: new ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFE8E8E8), Color(0xFFFFFFFF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Color(0xFFF27F2B),
                child: this.widget.SubVC,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: "Aly",
                  )),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BackGroundTemplate(
                title: "Meals",
                SubVC: HomePageFood(dbUrl: 'https://elkhyma.com/ramadan/meals/files/meals.php',title: "Meals",),
              )),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BackGroundTemplate(
                title: "Places",
                SubVC: HomePage(dbUrl: 'https://elkhyma.com/ramadan/places/files/places.php',title: "Places",),
              )),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BackGroundTemplate(
                title: "Places",
                SubVC: HomePage(dbUrl: 'https://elkhyma.com/ramadan/series/files/series.php',title: "Series",),
              )),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PrayerTimes(
                    text: "Prayer times",
                  )),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => QuranScreen(

              )),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SettingScreen(

              )),
        );
        break;
    }
  }
}
