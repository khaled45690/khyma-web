
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class QuranScreenState {
  final state;

  QuranScreenState(this.state);


  get()async{
    this.state.setState(() {
      this.state.isLoading = true;
    });
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    int pageNumber = prefs.getInt("pageNumber") == null ? 1 : prefs.getInt("pageNumber");
    var response = await http.get(
      Uri.parse('http://api.alquran.cloud/v1/page/$pageNumber/ar.alafasy'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    var response2 = await http.get(
      Uri.parse('http://api.alquran.cloud/v1/surah'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );

    this.state.setState(() {
      this.state.data = jsonDecode(response.body)["data"];
      this.state.data["numberOfAyahs"] = this.state.data["ayahs"][0]["surah"]["numberOfAyahs"];
      //.substring(0 , 37)
      for(int i = 0; i <  this.state.data["ayahs"].length ; i++ ){
        if( this.state.data["ayahs"][i]["text"].contains("بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيم")){
          this.state.ayat += "\nبِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيم\n${this.state.data["ayahs"][i]["text"].substring(38)} (${this.state.data["ayahs"][i]["numberInSurah"]})";
        }else{
          this.state.ayat += "${ this.state.data["ayahs"][i]["text"]} (${ this.state.data["ayahs"][i]["numberInSurah"]})";
        }

      }
      Map body = jsonDecode(response2.body);

      for(int i = 0; i < body["data"].length ; i++){
        this.state.swarNames.add(body["data"][i]["name"]);
      }
      this.state.isLoading = false;
    });

  }


  surahSearch(int surahNumber)async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    this.state.setState(() {
      this.state.isLoading = true;
      this.state.ayat = "";
    });
    Navigator.of(this.state.context).pop();
    var response = await http.get(
      Uri.parse('http://api.alquran.cloud/v1/surah/$surahNumber/ar.alafasy'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    this.state.setState(() {
      this.state.data = jsonDecode(response.body)["data"];
      prefs.setInt("pageNumber", this.state.data["ayahs"][0]["page"]).then((bool success) {
      });
      for (int i = 0; i < this.state.data["ayahs"].length; i++) {
        if (this.state.data["ayahs"][0]["page"] == this.state.data["ayahs"][i]["page"]) {
          if (this.state.data["ayahs"][i]["text"].contains(
              "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيم")) {
            this.state.ayat +=
            "\nبِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيم\n${this.state
                .data["ayahs"][i]["text"].substring(38)} (${this.state
                .data["ayahs"][i]["numberInSurah"]})";
          } else {
            this.state.ayat +=
            "${ this.state.data["ayahs"][i]["text"]} (${ this.state
                .data["ayahs"][i]["numberInSurah"]})";
          }
        } else {
          break;
        }
      }
      this.state.isLoading = false;
    });
  }


  changePage(int pageNumber)async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;

    if(pageNumber >=605 || pageNumber <=0){
      ScaffoldMessenger.of(this.state.context).showSnackBar(SnackBar(content: Text("لقد وصلت للحد الاقصي او الادني من الصفحات") , backgroundColor: Colors.red,));
    }else{
      this.state.setState(() {
        this.state.isLoading = true;
        this.state.ayat = "";
      });
      var response = await http.get(
        Uri.parse('http://api.alquran.cloud/v1/page/$pageNumber/ar.alafasy'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );
      prefs.setInt("pageNumber", pageNumber).then((bool success) {
      });
      this.state.setState(() {
        this.state.data = jsonDecode(response.body)["data"];
        this.state.data["numberOfAyahs"] = this.state.data["ayahs"][0]["surah"]["numberOfAyahs"];
        //.substring(0 , 37)
        for(int i = 0; i <  this.state.data["ayahs"].length ; i++ ){
          if(this.state.data["ayahs"][i]["text"].contains("بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيم")){
            this.state.ayat += "\nبِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيم\n${ this.state.data["ayahs"][i]["text"].substring(38)} (${this.state.data["ayahs"][i]["numberInSurah"]})";
          }else{
            this.state.ayat += "${this.state.data["ayahs"][i]["text"]} (${ this.state.data["ayahs"][i]["numberInSurah"]})";
          }

        }
        this.state.isLoading = false;
      });
    }
  }
}