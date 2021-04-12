import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:sanus/BackGroundTemplate.dart';
import 'package:sanus/khaled/Screens/FoodHorizontalScreen.dart';
import 'package:sanus/khaled/Screens/PlacesScreen.dart';
import 'package:sanus/khaled/Screens/SeriesScreen.dart';
import 'package:sanus/khaled/Widgets/DrawerWidget.dart';
import 'package:sanus/khaled/Widgets/MainShapeWidget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    margin: EdgeInsets.all(15),
                    child: Text("تاكل ايه؟" , style: TextStyle(color: Colors.red , fontSize: 22),)),
                FoodHorizontalScreen(),
                Container(
                    margin: EdgeInsets.all(15),
                    child: Text("تشوف ايه؟" , style: TextStyle(color: Colors.red , fontSize: 22),)),
                SeriesScreen(),
                Container(
                    margin: EdgeInsets.all(15),
                    child: Text("تروح فين؟" , style: TextStyle(color: Colors.red , fontSize: 22),)),
                PlacesScreen(),
                SizedBox(height: 50,),
              ],
            ),
          ),
        );
  }
}

// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: cellsPerRow,
//             childAspectRatio: 1 / cardHeightToWidth),
//         itemCount: mealsList.length,
//         itemBuilder: (context, index) {
//           return InkWell();
//         }
