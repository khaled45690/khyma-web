import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:sanus/DetailVCFood.dart';
import 'package:sanus/meal.dart';
class FoodHorizontalScreen extends StatefulWidget {
  @override
  _FoodHorizontalScreenState createState() => _FoodHorizontalScreenState();
}

class _FoodHorizontalScreenState extends State<FoodHorizontalScreen> {
 List data = [];
 List<meal> mealsList = <meal>[];
  getFood()async{
    //https://elkhyma.com/ramadan/meals/files/meals.php
    Uri url = Uri.parse('https://elkhyma.com/ramadan/meals/files/meals.php');
    http.Response response = await http.get(url);
    // print(jsonDecode(response.body));
    setState(() {
      data = jsonDecode(response.body)["message"];
      print(data[0]["name"]);

      for(int i = 0 ; i < data.length ; i++){
        meal x = new meal();
        x.name = data[i]["name"].toString();
        x.id = data[i]["id"];
        x.image = data[i]["image"];
        x.catigory = data[i]["catigory"];

        mealsList.add(x);
      }

      // print(mealsList);

    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFood();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          for(int i = 0; i < data.length ; i++)
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailVCFood(
                      mealId:data[i]["id"],
                      myMeal: mealsList[i],

                    )
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Stack(
                children: [
                   Image.network(
                    jsonDecode(data[i]["images"])[0],
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
                    height: 100,
                    width: 140,
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
                      child: Text(data[i]["name"],
                          style: TextStyle(color: Colors.white),
                          textDirection: TextDirection.rtl),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}

// data[0]["name"]
//jsonDecode(data[0]["images"])[0]
