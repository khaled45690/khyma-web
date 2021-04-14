import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  final String value;
  final Function onChange;
  final List<String> values;
  final double width, iconSize;
  final Color color;
  const DropdownWidget(
      this.value, this.values, this.width, this.iconSize, this.color,this.onChange,);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.only(top: 0),
      width: width,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DropdownButton<String>(
          underline: Container(
            child: Divider(
              height: 0,
              color: color,
            ),
          ),

          isExpanded: true,
          iconSize: iconSize,
          iconEnabledColor: color,
          style: TextStyle(
            fontSize: 15,
          ),
          value: value,
          hint: Text("Select item"),
          onChanged: onChange,
          dropdownColor: Colors.red,
          items: [
            for(int i = 0 ; i < values.length ; i++)
              DropdownMenuItem<String>(
                value: values[i],
                child: Container(

                  child: Text(
                    values[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: color),
                  ),
                ),
              ),
          ]
        ),
      ),
    );
  }
}
