import 'package:flutter/material.dart';

class QuranText extends StatelessWidget {
  final String ayats;

  const QuranText(this.ayats);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: size.width,
        // height: size.height - 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.black.withOpacity(0.76),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                  margin: EdgeInsets.all(5),
                  child: Text(ayats ,style: TextStyle(color: Colors.white , fontSize: 16 ,letterSpacing: 2 ,height: 1.5, fontFamily: "roboto"), textDirection: TextDirection.rtl ,textAlign: TextAlign.center,)),
            ],
          ),
        ),
      ),
    );
  }
}
