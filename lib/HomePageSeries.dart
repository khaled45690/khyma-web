import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:sanus/khaled/Widgets/AlyBannerAdUnit.dart';
import 'dart:convert';
import 'DetailVCFood.dart';
import 'DetailVCSeries.dart';
import 'DetailVCPlaces.dart';
import 'meal.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageSeries extends StatefulWidget {
  @override
  final String dbUrl;
  final String title;
  HomePageSeries({Key key, this.dbUrl, this.title}) : super(key: key);
  _HomePageSeriesState createState() => _HomePageSeriesState();

}

class _HomePageSeriesState extends State<HomePageSeries> {
  var _url = "tel:+201155533344";
  void _launchURL() async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

  bool isLoading = false;
  bool checkedVal = false;
  List<meal> myTempMeals = <meal>[];
  List<meal> mealsList = <meal>[];
  TextDirection txtdir = TextDirection.rtl;
  List<meal> myTempSortedSweets = <meal>[];
  List<meal> myTempSortedFoods = <meal>[];
  List<meal> myTempSortedDrinks = <meal>[];

  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchDogsBreed(widget.dbUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _searchBar(),
              Expanded(
                flex: 1,
                child: _mainData(),
              ),
              Center(
                child: Container(

                  height: 50,
                  child: kIsWeb ? InkWell(child: Image.asset("images/ad-space.gif"), onTap: (){
                    _launchURL();},):AlyBannerAdUnit(iosAdId: "ca-app-pub-9037650239384734/9097504435",androidAdId: "ca-app-pub-9037650239384734/7834386047",)
                ),
              )
            ],
          ),
        ));
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 120,
            child: TextField(
              controller: myController,
              textDirection: txtdir,
              decoration: InputDecoration(
                hintTextDirection: txtdir,
                hintText: "??????...",
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (text) {
                print(text);
                _filterDogList(text);
              },
            ),
          ),
          kIsWeb ? InkWell(child: Image.asset("images/ad-space.gif"), onTap: (){
            _launchURL();},):AlyBannerAdUnit(iosAdId: "ca-app-pub-9037650239384734/9967732972",androidAdId: "ca-app-pub-9037650239384734/8107856393",),
        ],
      ),
    );
  }

  Widget _mainData() {
    double cellWidth = 120;
    double titleHeight = 35;
    double cardHeightToWidth = 1.2;
    int cellsPerRow = MediaQuery.of(context).size.width ~/ cellWidth;
    return Center(
      child: isLoading
          ? CircularProgressIndicator()
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: cellsPerRow,
                  childAspectRatio: 1 / cardHeightToWidth),
              itemCount: mealsList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (widget.title == "Meals"){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailVCFood(
                              mealId: mealsList[index].id,
                              myMeal: mealsList[index],

                            )
                        ),
                      );
                    }else if (widget.title == "Places"){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailVCPlaces(
                              placeId: mealsList[index].id,


                            )
                        ),
                      );
                    }else if (widget.title == "Series"){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailVCSeries(
                              seriesId: mealsList[index].id,


                            )
                        ),
                      );
                    }

                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Stack(
                          children: [
                            new Image.network(
                              mealsList[index].image,
                              errorBuilder: (
                                context,
                                error,
                                stackTrace,
                              ) {
                                // print(error); //do something
                                return Image.asset("images/no-image.png");
                              },
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Stack(children: [
                                  SizedBox(
                                    child: CupertinoActivityIndicator(
                                      animating: true,
                                    ),
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    child: CircularProgressIndicator(
                                      value: loadingProgress
                                                  .expectedTotalBytes !=
                                              null
                                          ? loadingProgress
                                                  .cumulativeBytesLoaded /
                                              loadingProgress.expectedTotalBytes
                                          : null,
                                    ),
                                  ),
                                ]);
                              },
                              height: cellWidth * cardHeightToWidth - 7,
                              width: cellWidth,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF000000),
                                        Color(0x00000000)
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter),
                                ),
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Text(mealsList[index].name,
                                    style: TextStyle(color: Colors.white),
                                    textDirection: TextDirection.rtl),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png
                      // Icon(Icons.insert_chart_outlined)),
                    ],
                  ),
                );
              }),
    );
  }
// ??????????
  // ??????????????
  // ????????????

  _filterDogList(String text) {
    if (text.isEmpty) {
      setState(() {
        mealsList = myTempMeals;
        List<meal> sweets = <meal>[];
        sweets = mealsList.where((element) => element.catigory.toString().contains("????????????")).toList();
        print(sweets.length);
      });
    } else {
      // final RegExp nameRegExp = RegExp('[a-zA-Z]');
      // TextDirection td = TextDirection.rtl;
      // if (nameRegExp.hasMatch(text) ){
      //   txtdir = TextDirection.ltr;
      //   setState(() {});
      // }else{
      //   txtdir = TextDirection.rtl;
      //   setState(() {});
      // }
      List<meal> filteredMeals = <meal>[];

      // filteredMeals = mealsList.where((element) => element.name.toString().toLowerCase().contains(text.toString().toLowerCase())).toList();

      myTempMeals.forEach((element) {
        if (element.name.toString()
            .toLowerCase()
            .contains(text.toString().toLowerCase())) {
          filteredMeals.add(element);
        }
      });
      List<meal> sweets = <meal>[];
      sweets = filteredMeals.where((element) => element.catigory.toString().contains("????????????")).toList();
      print(sweets.length);
      setState(() {
        mealsList = filteredMeals;
      });
    }
  }

  _fetchDogsBreed(String url) async {
    setState(() {
      isLoading = true;
    });

    // http://localhost:8888/ramadan.php
    // https://dog.ceo/api/breeds/list/all
    Map<String, dynamic> testMap = Map<String, dynamic>();
    var myStr = url;
    var myUri = Uri.parse(myStr);
    final response = await http.get(myUri);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      testMap = jsonResponse;
      // print(testMap["message"]);
      jsonResponse["message"].forEach((element) {
        // print(element["name"]);
        var imgs = jsonDecode(element["images"]);
        var img = imgs[0];
        // print(img);
        var tempMeal =
            new meal(name: element["name"], image: img, id: element["id"]);
        tempMeal.catigory = element["catigory"];
        myTempMeals.add(tempMeal);
      });

      myTempMeals.forEach((element) {
        // print(element.name);
      });
      myTempSortedSweets =myTempMeals.where((element) => element.catigory.toString().contains("????????????")).toList();
      print(myTempMeals.length);
      print(myTempSortedSweets);
    } else {
      throw Exception("Failed to load Dogs Breeds.");
    }
    setState(() {
      mealsList = myTempMeals;
      isLoading = false;
    });
  }
}
