import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sanus/khaled/Widgets/DrawerWidget.dart';
import 'package:sanus/khaled/Widgets/MainShapeWidget.dart';
import 'package:sanus/khaled/Widgets/SettingTabsWidget.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
    Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD83D3A),
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 18,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        endDrawer: DrawerWidget(7),
        body: MainShapeWidget(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: size.width - 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SettingTabsWidget(Icons.person, "الحساب", () {}),
                    SettingTabsWidget(FontAwesomeIcons.bell, "التنبيهات", () {}),
                    SettingTabsWidget(Icons.menu_book, "الختمة", () {}),
                    SettingTabsWidget(FontAwesomeIcons.mobile, "المظهر", () {}),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
