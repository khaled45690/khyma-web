import 'package:flutter/material.dart';
import 'package:sanus/main.dart';

import 'package:sanus/PrayerTimes.dart';
import 'package:sanus/HomePage.dart';
import 'package:sanus/khaled/Screens/QuranScreen.dart';
import 'package:sanus/BackGroundTemplate.dart';
import 'package:sanus/khaled/Screens/SettingScreen.dart';


class DrawerWidget extends StatefulWidget {
  final int selectedDestination;

  const DrawerWidget(this.selectedDestination);
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int _selectedDestination = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _selectedDestination = widget.selectedDestination;
    });

  }
  @override
  Widget build(BuildContext context) {

    return Drawer(
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xFFAD411F)),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                trailing: Icon(Icons.home_outlined),
                title: Text('الرئيسية', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 0,

                onTap: () => selectDestination(0),
              ),
              ListTile(
                trailing: Icon(Icons.restaurant),
                title: Text('تاكل إيه؟', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 1,
                onTap: () => selectDestination(1),
              ),
              ListTile(
                trailing: Icon(Icons.live_tv_outlined),
                title: Text('تشوف إيه؟', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 2,

                onTap: () => selectDestination(2),
              ),
              ListTile(
                trailing: Icon(Icons.not_listed_location_outlined),
                title: Text('تروح فين؟', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 3,

                onTap: () => selectDestination(3),
              ),
              ListTile(
                trailing: Icon(Icons.nights_stay_outlined),
                title: Text('مواقيت الصلاة', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 4,

                onTap: () => selectDestination(4),
              ),
              ListTile(
                trailing: Icon(Icons.menu_book_outlined),
                title: Text('الختمة', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 5,

                onTap: () => selectDestination(5),
              ),
              ListTile(
                trailing: Icon(Icons.content_paste_sharp),
                title: Text('خطة اليوم', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 6,

                onTap: () => selectDestination(6),
              ),
              ListTile(
                trailing: Icon(Icons.settings_outlined),
                title: Text('الإعدادات', textDirection: TextDirection.rtl,),
                selected: _selectedDestination == 7,

                onTap: () => selectDestination(7),
              ),

            ],
          ),
        ),
      ),
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
                SubVC: HomePage(dbUrl: 'https://elkhyma.com/ramadan/meals/files/meals.php',title: "Meals",),
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

    }

  }
}
