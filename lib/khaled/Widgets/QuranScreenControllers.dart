import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanus/khaled/Alerts/SearchAlert.dart';

class QuranScreenControllers extends StatelessWidget {
  final Function changePage , surahSearch;
  final Map data;
  final List swarNames ;
  const QuranScreenControllers(this.changePage, this.data, this.swarNames , this.surahSearch);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Stack(
                children: [
                  Container(
                    height: 30,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 0 , bottom: 0 , top: 0),
                            child: IconButton(
                              padding: EdgeInsets.all(0),
                              iconSize: 5,
                              onPressed: ()=>searchAlert(context , swarNames , surahSearch),
                              icon: Icon(
                                Icons.wysiwyg_sharp,
                                color: Colors.white,
                                size: 20,
                              ),
                              // icon : Icons.wysiwyg_sharp,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200,
                    ),
                    height: 30,
                    width: 100,

                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "الصفحة ${data["ayahs"][0]["page"]} الجزء ${data["ayahs"][0]["juz"]}",
              style: TextStyle(fontFamily: "roboto",),textDirection: TextDirection.rtl,
                )
            ],
          ),
        ),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(
              width: 40,
            ),
            Text(
              "( ${data["numberOfAyahs"]} ايات )",
              textDirection: TextDirection.rtl,
            ),
            IconButton(
                icon: Icon(Icons.keyboard_arrow_right),
                onPressed: () => changePage(data["ayahs"][0]["page"] - 1)),
            IconButton(
                icon: Icon(Icons.keyboard_arrow_left),
                onPressed: () => changePage(data["ayahs"][0]["page"] + 1)),
          ],
        )
      ],
    );
  }
}
