import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sanus/place.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'PrayerTimesData.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'DetailVCPlaces.dart';
import 'khaled/Widgets/AlyBannerAdUnit.dart';
import 'myStatefulWidget.dart';
import 'DetailVCPlaces.dart';
import 'place.dart';
import 'package:flutter/cupertino.dart';

// TZEQ3O14fPU
class DetailVCPlaces extends StatefulWidget {
  final int placeId;
  // String mealVideo = "TZEQ3O14fPU";
  place myPlace = new place();

  DetailVCPlaces ({Key key, this.placeId,  }): super(key: key);

  @override
  _DetailVCPlacesState createState() => _DetailVCPlacesState();


}




class _DetailVCPlacesState extends State<DetailVCPlaces> {
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
    print(widget.myPlace.id);
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
              kIsWeb ? Container():AlyBannerAdUnit(iosAdId: "ca-app-pub-3940256099942544/8865242552",androidAdId: "ca-app-pub-3940256099942544/8865242552",),
              Text(widget.myPlace.name, textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),

              new Image.network(
                widget.myPlace.image,
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

              Padding(
                padding: const EdgeInsets.only( top: 8.0),
                child: Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Text("نبذة عن المكان:", textDirection: TextDirection.rtl,
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


              Text(widget.myPlace.description, textDirection: TextDirection.rtl,style: TextStyle(
                color: Colors.white,
              ),),
              Padding(
                padding: const EdgeInsets.only( top: 8.0),
                child: Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Text("ترشيحاتنا:", textDirection: TextDirection.rtl,
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
              Text(widget.myPlace.recommendations, textDirection: TextDirection.rtl,style: TextStyle(
                color: Colors.white,
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: YoutubePlayerIFrame(
                  controller: _controller,
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
    place tempMeal = new place();
    // http://localhost:8888/ramadan.php
    // https://dog.ceo/api/breeds/list/all
    Map<String, dynamic> testMap = Map<String, dynamic>();
    var myStr = 'https://elkhyma.com/ramadan/places/files/oneplace.php?id=' + widget.placeId.toString();
    var myUri = Uri.parse(myStr);
    final response = await http.get(myUri);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      testMap = jsonResponse;
      print(testMap["message"]);
      jsonResponse["message"].forEach((element) {
        print("================================");
        print(element["name"]);
        var imgs = jsonDecode(element["images"]);
        var img = imgs[0];
        var videos = jsonDecode(element["video"]);
        String video = videos[0].toString();
        print("================================");
        print(video);
        // print(img);
        tempMeal =
        new place(name: element["name"], image: img, id: element["id"],);
        tempMeal.description = element["description"];
        tempMeal.recommendations = element["recommendations"];
        tempMeal.video = video;

        print(tempMeal.description);
      });

    } else {
      throw Exception("Failed to load Dogs Breeds.");
    }
    setState(() {
      widget.myPlace = tempMeal;

      _controller = YoutubePlayerController(
          initialVideoId: tempMeal.video,
          params: const YoutubePlayerParams(
            autoPlay: false,
            showControls: true,
          )
        // flags: const YoutubePlayerFlags(
        //   autoPlay: false,
        // )
      );
      isLoading = false;
    });
  }
}