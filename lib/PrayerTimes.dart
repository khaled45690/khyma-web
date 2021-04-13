import 'package:flutter/material.dart';
import 'package:sanus/DayPrayers.dart';
import 'package:sanus/khaled/Widgets/DropDownWidget.dart';
import 'PrayerTimesData.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PrayerTimes extends StatefulWidget {
  final String text;
  PrayerTimes ({Key key, this.text}): super(key: key);

  @override
  _PrayerTimesState createState() => _PrayerTimesState();
}

class _PrayerTimesState extends State<PrayerTimes> {
  RouteSettings routeSettings;
  List<DayPrayers> monthPrayers = <DayPrayers>[];
  bool isLoading = false;
  DateTime selectedDate = DateTime.now();
  String selectedDateStr = "";
  List<String> cityList = ["الاسكندرية" , "القاهرة"];
  String cityValue = "الاسكندرية";
  @override
  void initState() {
    var myPrayer = Prayer("gg","gg");
    var prayerData = myPrayer.fromJson;
    print(prayerData);

    // TODO: implement initState
    super.initState();
    _fetchMonthPrayers();
    selectedDateStr =  "${selectedDate.year.toString()}-${selectedDate.month.toString().padLeft(2,'0')}-${selectedDate.day.toString().padLeft(2,'0')} ";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD83D3A),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Container(

        child: Column( // all page
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row( // date line
                children: [
                  Spacer(),
                  isLoading
                      ? CircularProgressIndicator()
                      :Text(monthPrayers[selectedDate.day-1].HijDay+" "+monthPrayers[selectedDate.day-1].HijMonth+" "+monthPrayers[selectedDate.day-1].HijYear, textDirection: TextDirection.rtl, style: (TextStyle(color: Colors.white))),
                  Spacer(),
                  Text("الموافق", style: (TextStyle(color: Colors.white))),
                  Spacer(),
                  Text(selectedDateStr, style: (TextStyle(color: Colors.white)),),
                  Spacer(),
                ],
              ),
            ),
            isLoading
                ? CircularProgressIndicator()
                :Container( // Prayer times
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Row(
                  children: [
                    Spacer(),
                    Column(
                      children: [
                        Icon(Icons.alarm_add_outlined, color: Color(0xFFD83D3A),),
                        Text("عشاء", style: (TextStyle(color: Color(0xFFD83D3A)))),
                        Text(monthPrayers[selectedDate.day-1].Isha, style: (TextStyle(color: Color(0xFFD83D3A)))),

                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(Icons.alarm_add_outlined, color: Color(0xFFD83D3A),),
                        Text("مغرب", style: (TextStyle(color: Color(0xFFD83D3A)))),
                        Text(monthPrayers[selectedDate.day-1].Maghrib, style: (TextStyle(color: Color(0xFFD83D3A)))),

                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(Icons.alarm_add_outlined, color: Color(0xFFD83D3A),),
                        Text("عصر", style: (TextStyle(color: Color(0xFFD83D3A)))),
                        Text(monthPrayers[selectedDate.day-1].Asr, style: (TextStyle(color: Color(0xFFD83D3A)))),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(Icons.alarm_add_outlined, color: Color(0xFFD83D3A),),
                        Text("ظهر", style: (TextStyle(color: Color(0xFFD83D3A)))),
                        Text(monthPrayers[selectedDate.day-1].Dhuhr, style: (TextStyle(color: Color(0xFFD83D3A)))),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(Icons.alarm_add_outlined, color: Color(0xFFD83D3A),),
                        Text("فجر", style: (TextStyle(color: Color(0xFFD83D3A)))),
                        Text(monthPrayers[selectedDate.day-1].Fajr, style: (TextStyle(color: Color(0xFFD83D3A)))),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Spacer(),
                Text("حسب التوقيت المحلي لمدينة: ", textDirection: TextDirection.rtl, style: (TextStyle(color: Colors.white))),
                DropdownWidget(cityValue , cityList , 100 , 20 , (value){}),
                Spacer(),
              ],
            ),
            Container(// calindar
              child: InkWell(
                child: Text("تغير التاريخ" , style: TextStyle(color: Colors.white ,),),
                onTap: () async {
                  selectedDate = await showDatePicker(
                      context: context,
                      locale : const Locale("ar"),
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2018),
                      lastDate: DateTime(2030),
                      helpText: "",
                      // useRootNavigator: true,
                      // routeSettings: routeSettings,
                      textDirection: TextDirection.rtl,
                      builder: (BuildContext context, Widget child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            textTheme: Theme.of(context).textTheme.apply(
                                fontSizeFactor: 0.9,
                              fontFamily: "Roboto",

                            ),
                            // primaryTextTheme: ,

                            colorScheme: ColorScheme.light(
                              // secondary: Colors.pink,
                              // onBackground: Colors.pink,
                              primary: Color(0xFFD83D3A), // dialogue label bg and selected numbers
                              onPrimary: Colors.white,  // on selected numbers
                              // surface: Colors.white,
                              onSurface: Colors.white, // days and months
                            ),
                            dialogBackgroundColor:Colors.grey, // dialogue background
                            primaryColor: Color(0xFFD83D3A), // header color and dialogue selected text
                            scaffoldBackgroundColor: Colors.white,
                          ),
                          child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: child
                          ),
                        );
                      }
                  );
                  setState(() {
                    if (selectedDate == null){
                      selectedDate = DateTime.now();
                    }
                    _fetchMonthPrayers();
                    selectedDateStr =  "${selectedDate.year.toString()}-${selectedDate.month.toString().padLeft(2,'0')}-${selectedDate.day.toString().padLeft(2,'0')} ";
                  });
                },
              )

            ),
            Expanded(
              child: Container(
                
                child: ListView.builder(
                  itemCount: monthPrayers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      child: Card(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = new DateTime(selectedDate.year, selectedDate.month,index + 1);
                              selectedDateStr =  "${selectedDate.year.toString()}-${selectedDate.month.toString().padLeft(2,'0')}-${selectedDate.day.toString().padLeft(2,'0')} ";
                            });
                          },
                          child: Row(
                            children: [
                              Spacer(),
                              Text(monthPrayers[index].HijDay+" "+monthPrayers[index].HijMonth, textDirection: TextDirection.rtl,style: TextStyle(fontSize: 14, color: Colors.red),),
                              Spacer(),
                              Text("الموافق", textDirection: TextDirection.rtl,style: TextStyle(fontSize: 14, color: Colors.red),),
                              Spacer(),
                              Text(monthPrayers[index].GregDate,style: TextStyle(fontSize: 14, color: Colors.red)),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
                ),
            ),
          ],
        ),
      ),
    );
  }
  _fetchMonthPrayers() async {
    setState(() {
      isLoading = true;
    });
    monthPrayers.clear();
    // http://localhost:8888/ramadan.php
    // https://dog.ceo/api/breeds/list/all
    var month =  "${selectedDate.month.toString().padLeft(2,'0')}";
    var year =  "${selectedDate.year.toString().padLeft(2,'0')}";
    print(month);
    Map<String, dynamic> testMap = Map<String, dynamic>();
    // https://khyma.hwayadesigns.com/prayers.php?year=2021&month=4
    var myStr = 'https://elkhyma.com/ramadan/prayers.php?year='+year+'&month='+month;
    // var myStr = 'http://api.aladhan.com/v1/calendarByCity?city=CAIRO&country=EGYPT&method=5&year='+year+'&month='+month;
    var myUri = Uri.parse(myStr);
    final response = await http.get(myUri);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      testMap = jsonResponse;
      print(testMap["data"]);
      print("element[0]");
      print("element[0]");


      testMap["data"].forEach((element) {
        // print(element["date"]["hijri"]["day"]);
        print(element["date"]["hijri"]["weekday"]["ar"].toString());
        print(element["date"]["hijri"]["month"]["ar"]);
        print(element["date"]["hijri"]["year"]);
        var day = DayPrayers(element["timings"]["Fajr"], element["timings"]["Dhuhr"], element["timings"]["Asr"], element["timings"]["Maghrib"], element["timings"]["Isha"],  element["date"]["hijri"]["weekday"]["ar"] + " " + element["date"]["hijri"]["day"] , element["date"]["hijri"]["month"]["ar"], element["date"]["hijri"]["year"],element["date"]["gregorian"]["date"]);
        monthPrayers.add(day);
      });
    } else {
      throw Exception("Failed to load Dogs Breeds.");
    }
    setState(() {
      isLoading = false;
    });
  }

}

