import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:sanus/BackGroundTemplate.dart';
import 'package:sanus/HomePageSeries.dart';
import 'package:sanus/HomePageFood.dart';
import 'package:sanus/HomePagePlaces.dart';
import 'package:sanus/ad_manager.dart';
import 'package:sanus/khaled/Screens/FoodHorizontalScreen.dart';
import 'package:sanus/khaled/Screens/PlacesScreen.dart';
import 'package:sanus/khaled/Screens/SeriesScreen.dart';
import 'package:sanus/khaled/Widgets/AlyBannerAdUnit.dart';
import 'package:sanus/khaled/Widgets/DrawerWidget.dart';
import 'package:sanus/khaled/Widgets/MainShapeWidget.dart';


class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                kIsWeb ? Container():AlyBannerAdUnit(iosAdId: "ca-app-pub-9037650239384734/1350876358",androidAdId: "ca-app-pub-9037650239384734/1350876358",),

                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BackGroundTemplate(
                            title: "Meals",
                            SubVC: HomePageFood(dbUrl: 'https://elkhyma.com/ramadan/meals/files/meals.php',title: "Meals",),
                          )
                      ),
                    );
                  },
                  child: Container(
                      margin: EdgeInsets.all(15),
                      child: Text("تاكل ايه؟" , style: TextStyle(color: Colors.red , fontSize: 22),)),
                ),
                FoodHorizontalScreen(),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BackGroundTemplate(
                            title: "Series",
                            SubVC: HomePageSeries(dbUrl: 'https://elkhyma.com/ramadan/series/files/series.php',title: "Series",),
                          )
                      ),
                    );
                  },
                  child: Container(
                      margin: EdgeInsets.all(15),
                      child: Text("تشوف ايه؟" , style: TextStyle(color: Colors.red , fontSize: 22),)),
                ),
                SeriesScreen(),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BackGroundTemplate(
                            title: "Places",
                            SubVC: HomePagePlaces(dbUrl: 'https://elkhyma.com/ramadan/places/files/places.php',title: "Places",),
                          )
                      ),
                    );
                  },
                  child: Container(
                      margin: EdgeInsets.all(15),
                      child: Text("تروح فين؟" , style: TextStyle(color: Colors.red , fontSize: 22),)),
                ),
                PlacesScreen(),
                SizedBox(height: 50,),
                kIsWeb ? Container():AlyBannerAdUnit(iosAdId: "ca-app-pub-9037650239384734/1350876358",androidAdId: "ca-app-pub-9037650239384734/1350876358",)
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
