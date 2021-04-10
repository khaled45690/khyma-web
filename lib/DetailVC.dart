import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'PrayerTimesData.dart';


class DetailVC extends StatefulWidget {
  final String text;
  final String testVideo = "TZEQ3O14fPU";
  DetailVC ({Key key, this.text}): super(key: key);

  @override
  _DetailVCState createState() => _DetailVCState();


}




class _DetailVCState extends State<DetailVC> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = YoutubePlayerController(
      initialVideoId: widget.testVideo,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D1D),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xFF1D1D1D),
        child: Column(
          children: [
            Text("نسل الأغراب",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),

          ],
        )


      ),
    );
  }
}