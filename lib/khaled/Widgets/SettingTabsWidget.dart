import 'package:flutter/material.dart';

class SettingTabsWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final GestureTapCallback onTap;

  const SettingTabsWidget(this.icon, this.text, this.onTap);
  // Icons.person
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            width: double.infinity,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Expanded(child: Icon(icon ,  color: Colors.red,) , flex: 1,),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400 , color: Colors.red),
                    textAlign: TextAlign.end,
                  ),
                  flex: 10,
                ),
                Expanded(child: Icon(Icons.arrow_back_ios_rounded ,  color: Colors.grey,) , flex:1),
              ],
            ),
          ),
          onTap: onTap,
        ),
        Divider(
          thickness: 0.5,
          endIndent: 20,
          indent: 20,
          color: Colors.grey.withOpacity(0.4),
        )
      ],
    );
  }
}