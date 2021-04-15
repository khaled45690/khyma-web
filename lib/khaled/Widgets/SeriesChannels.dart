import 'package:flutter/material.dart';

class SeriesChannels extends StatelessWidget {
  final List time;

  const SeriesChannels(this.time);
  @override
  Widget build(BuildContext context) {
    print(time);
    Map data = time[0];
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

          Container(
              margin: EdgeInsets.only(top: 2),
              child: Text(" : ${time[0]["name"]}  ", style: TextStyle(color: Colors.white , fontSize: 15) ,)),
          Container(
            // width: MediaQuery.of(context).size.width - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                for(int i = 0; i < time[1]["times"].length; i++)
                Container(
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.7 , color: Color(0xFFFFDFDFDF)),
                      borderRadius: BorderRadius.circular(10),
                  ),
                    child: Container(
                        margin: EdgeInsets.only(top: 1 , left: 3 , right: 3),
                        child: Text(time[1]["times"][i] , style: TextStyle(color: Colors.white , fontSize: 12),)),
                ),
              ],
            ),
          )
      ],
    );
  }
}


//:${time[0]["name"]}
//time[1]["times"][0]