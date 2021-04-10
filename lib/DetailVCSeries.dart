import 'package:flutter/material.dart';
import 'package:sanus/place.dart';
import 'package:sanus/series.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'PrayerTimesData.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'DetailVCSeries.dart';
import 'myStatefulWidget.dart';
import 'DetailVCSeries.dart';
import 'place.dart';
import 'package:flutter/cupertino.dart';

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
    print(widget.mySeries.id);
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
              Text(widget.mySeries.name, textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
              ),


              Padding(
                padding: const EdgeInsets.only( top: 8.0),
                child: Row(
                  children: [
                    Spacer(),
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
                    Icon(Icons.format_align_right_outlined, color: Colors.redAccent,),
                  ],
                ),
              ),


              Text(widget.mySeries.brief, textDirection: TextDirection.rtl,style: TextStyle(
                color: Colors.white,
              ),),




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
    var myStr = 'https://hwayadesigns.com/ramadan/series/files/oneseries.php?id=' + widget.seriesId.toString();
    var myUri = Uri.parse(myStr);
    final response = await http.get(myUri);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      testMap = jsonResponse;
      print("================================");
      print(testMap["message"]);
      jsonResponse["message"].forEach((element) {
        print("================================");
        print(element["name"]);


        String video = element["video"].toString();
        print("================================");
        print(video);
        // print(img);
        tempMeal =
        new series(name: element["name"], image: element["image"], id: element["id"],);
        tempMeal.brief = element["brief"];

        tempMeal.video = video;

        print(tempMeal.brief);
      });

    } else {
      throw Exception("Failed to load Dogs Breeds.");
    }
    setState(() {
      widget.mySeries = tempMeal;

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