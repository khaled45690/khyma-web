import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'PrayerTimesData.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'DetailVCFood.dart';
import 'myStatefulWidget.dart';
import 'DetailVCFood.dart';
import 'meal.dart';
import 'package:flutter/cupertino.dart';


class DetailVCFood extends StatefulWidget {
  final int mealId;
  // String mealVideo = "TZEQ3O14fPU";
  meal myMeal = new meal();

  DetailVCFood ({Key key, this.mealId, this.myMeal, }): super(key: key);

  @override
  _DetailVCFoodState createState() => _DetailVCFoodState();


}




class _DetailVCFoodState extends State<DetailVCFood> {
  bool isLoading = false;

  YoutubePlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    // _controller = YoutubePlayerController(
    //     initialVideoId: widget.mealVideo,
    //     flags: const YoutubePlayerFlags(
    //       autoPlay: false,
    //     )
    // );
    _fetchDogsBreed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.myMeal.id);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D1D),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Container(
          color: const Color(0xFF1D1D1D),
          child: isLoading
              ? Center(child: CircularProgressIndicator(backgroundColor: Colors.white,))
              :ListView(
            children: [
              Text(widget.myMeal.name, textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),

              new Image.network(
                widget.myMeal.image,
                errorBuilder: (
                    context,
                    error,
                    stackTrace,
                    ) {
                  print(error); //do something
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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.68,
                fit: BoxFit.cover,
              ),
              // Spacer(),
               Padding(
                 padding: const EdgeInsets.only( top: 8.0),
                 child: Row(
                   children: [
                       Spacer(),
                     Padding(
                       padding: const EdgeInsets.only(right: 4.0),
                       child: Text("طريقة التحضير:", textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
              ),
                     ),
                     Icon(Icons.format_list_numbered_rtl_outlined, color: Colors.redAccent,),
                   ],
                 ),
               ),


              Text(widget.myMeal.recipe.toString(), textDirection: TextDirection.rtl,style: TextStyle(
                color: Colors.white,
              ),),
              Padding(
                padding: const EdgeInsets.only( top: 8.0),
                child: Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Text("خليه صحي:", textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Icon(Icons.spa_outlined, color: Colors.green,),
                  ],
                ),
              ),
              Text(widget.myMeal.makeHealthy.toString(), textDirection: TextDirection.rtl,style: TextStyle(
                color: Colors.white,
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
              ),


            ],
          )


      ),
    );
  }
  _fetchDogsBreed() async {
    setState(() {
      isLoading = true;
    });
    meal tempMeal = new meal();
    // http://localhost:8888/ramadan.php
    // https://dog.ceo/api/breeds/list/all
    Map<String, dynamic> testMap = Map<String, dynamic>();
    var myStr = 'https://hwayadesigns.com/ramadan/meals/files/onemeal.php?id=' + widget.mealId.toString();
    var myUri = Uri.parse(myStr);
    final response = await http.get(myUri);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      testMap = jsonResponse;
      print(testMap["message"]);
      jsonResponse["message"].forEach((element) {
        print(element["name"]);
        var imgs = jsonDecode(element["images"]);
        var img = imgs[0];
        var videos = jsonDecode(element["videos"]);
        String video = videos[0].toString();
        print("================================");
        print(video);
        // print(img);
        tempMeal =
        new meal(name: element["name"], image: img, id: element["id"],);
        tempMeal.recipe = element["recipe"];
        tempMeal.makeHealthy = element["makeHealthy"];
        tempMeal.video = video;

        print(tempMeal.recipe);
      });

    } else {
      throw Exception("Failed to load Dogs Breeds.");
    }
    setState(() {
      widget.myMeal = tempMeal;

      _controller = YoutubePlayerController(
          initialVideoId: tempMeal.video,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          )
      );
      isLoading = false;
    });
  }
}