import 'package:flutter/material.dart';

class myStatefulWidget extends StatefulWidget {
  final String text;
  myStatefulWidget ({Key key, this.text}): super(key: key);

@override
  _myStatefulWidgetState createState() => _myStatefulWidgetState();
}

class _myStatefulWidgetState extends State<myStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFFFE306),
            child: Text(widget.text),
    );
  }
}