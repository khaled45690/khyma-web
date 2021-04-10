import 'package:flutter/material.dart';
import 'package:sanus/khaled/StateDependentClasses/QuranScreenState.dart';
import 'package:sanus/khaled/Widgets/DrawerWidget.dart';
import 'package:sanus/khaled/Widgets/QuranScreenControllers.dart';
import 'package:sanus/khaled/Widgets/QuranText.dart';

class QuranScreen extends StatefulWidget {
  @override
  _QuranScreenState createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  Map data = {};
  String ayat = "";
  List swarNames = [];
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    QuranScreenState qss = new QuranScreenState(this);
    qss.get();
  }

  @override
  Widget build(BuildContext context) {
    QuranScreenState qss = new QuranScreenState(this);
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: Color(0xFF383838),
      appBar: AppBar(
        backgroundColor: Color(0xFF383838),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      endDrawer: DrawerWidget(5),
      body: Stack(
          children: [
            // Container(color: Colors.amber, width: 50, height: 50),
            // here was the yellow box ⬆︎
            Container(
              //clipBehavior: Clip.none,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: new ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFE8E8E8), Color(0xFFFFFFFF)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    // color: Color(0xFFF27F2B),
                    child: Container(
                      color: Colors.white,
                      child:  isLoading
                          ? Container(
                        margin: EdgeInsets.only(top: 10),
                        width: size.width,
                        height: size.height - 196,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Center(child: CircularProgressIndicator(backgroundColor: Colors.lightBlue,),),)
                          : Column(
                        children: [
                          QuranScreenControllers(qss.changePage , data , swarNames , qss.surahSearch),
                          QuranText(ayat),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),]
      ),
    );
  }
}
