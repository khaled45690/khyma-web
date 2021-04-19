import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sanus/BackGroundTemplate.dart';
import 'package:sanus/HomePageSeries.dart';
import 'package:sanus/HomePageFood.dart';
import 'package:sanus/HomePagePlaces.dart';
import 'package:sanus/khaled/Screens/FoodHorizontalScreen.dart';
import 'package:sanus/khaled/Screens/PlacesScreen.dart';
import 'package:sanus/khaled/Screens/SeriesScreen.dart';
import 'package:sanus/khaled/Widgets/AlyBannerAdUnit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var  facebook = 'https://www.facebook.com/elkhyma.EG/';
  var website = 'https://hwayadesigns.com';
  var _url = '';
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

                Row(
                  children: [
                    IconButton(icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue,), onPressed:(){
                      _url = facebook;
                      _launchURL();}),
                    IconButton(onPressed:(){
                      _url = website;
                      _launchURL();}, icon: Image.asset("images/hwayaLogo.png",)),
                  ],
                ),
                InkWell(child: Image.asset("images/ad-space.gif"), onTap: (){
                  _url = "tel:+201155533344";
                  _launchURL();
                },),




                // kIsWeb ? Container():AlyBannerAdUnit(iosAdId: "ca-app-pub-9037650239384734/7724713011",androidAdId: "ca-app-pub-9037650239384734/1460549385",),

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
                kIsWeb ?  InkWell(child: Image.asset("images/ad-space.gif"), onTap: (){
    _url = "tel:+201155533344";
    _launchURL();
    },):AlyBannerAdUnit(iosAdId: "ca-app-pub-9037650239384734/4228321130",androidAdId: "ca-app-pub-9037650239384734/3047101401",)
              ],
            ),
          ),
        );
  }

 void _launchURL() async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}

// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: cellsPerRow,
//             childAspectRatio: 1 / cardHeightToWidth),
//         itemCount: mealsList.length,
//         itemBuilder: (context, index) {
//           return InkWell();
//         }
