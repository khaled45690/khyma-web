import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sanus/khaled/Widgets/SeriesChannels.dart';
import 'package:sanus/place.dart';
import 'package:sanus/series.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'MobileOs.dart';
import 'PrayerTimesData.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'DetailVCSeries.dart';
import 'khaled/Widgets/AlyBannerAdUnit.dart';
import 'myStatefulWidget.dart';
import 'DetailVCSeries.dart';
import 'place.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// TZEQ3O14fPU
class DetailVCSeries extends StatefulWidget {
  final int seriesId;
  // String mealVideo = "TZEQ3O14fPU";
  series mySeries = new series();

  DetailVCSeries ({Key key, this.seriesId,  }): super(key: key);

  @override
  _DetailVCSeriesState createState() => _DetailVCSeriesState();


}




class _DetailVCSeriesState extends State<DetailVCSeries> {
  bool isLoading = false;
  List time = [];
  series mySeries = new series();
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
    print(widget.mySeries.id??"");
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
              kIsWeb ? Container():AlyBannerAdUnit(iosAdId: "ca-app-pub-9037650239384734/9776161289",androidAdId: "ca-app-pub-9037650239384734/1422210307",),
              Text(mySeries.name?? "", textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              kIsWeb ? Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: YoutubePlayerIFrame(
                  controller: _controller,
                ),
              ): MobileOs().isAndroid ?Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: YoutubePlayerIFrame(
                  controller: _controller,
                ),
              ): new Image.network(
                mySeries.image,
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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.68,
                fit: BoxFit.cover,
              ),


              Padding(
                padding: const EdgeInsets.only( top: 8.0),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.format_align_right_outlined, color: Colors.redAccent,),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Text("نبذة عن العمل:", textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Text(mySeries.brief?? "", textDirection: TextDirection.rtl,style: TextStyle(
                color: Colors.white,
              ),),

              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.alarm, color: Colors.redAccent,),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text("مواعيد العرض:",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              for(int i = 0 ; i < time.length ; i++)
                SeriesChannels(time[i]),

            ],
          )


      ),
    );
  }
  _fetchDogsBreed() async {
    setState(() {
      isLoading = true;
    });
    series tempMeal = new series();
    // http://localhost:8888/ramadan.php
    // https://dog.ceo/api/breeds/list/all
    Map<String, dynamic> testMap = Map<String, dynamic>();
    var myStr = 'https://elkhyma.com/ramadan/series/files/oneseries.php?id=' + widget.seriesId.toString();
    var myUri = Uri.parse(myStr);

    final response = await http.get(myUri);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      print("--------------------=====================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");


        time = jsonDecode(jsonResponse["message"][0]["time"]);
        print(time);

      testMap = jsonResponse;
      // print("================================");
      // print(testMap["message"]);
      jsonResponse["message"].forEach((element) {
        var imgs = jsonDecode(element["images"]);
        var img = imgs[0];

        print(img);
        // print("================================");
        // print(element["name"]);


        String video = element["video"].toString();
        // print("================================");
        // print(video);

        tempMeal = new series(name: element["name"], image: img, id: element["id"],);
        tempMeal.brief = element["brief"];

        tempMeal.video = video;

        // print(tempMeal.brief);
      });

    } else {
      throw Exception("Failed to load Dogs Breeds.");
    }
    setState(() {
      mySeries = tempMeal;

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