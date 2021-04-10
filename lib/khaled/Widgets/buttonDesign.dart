import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final Function onclick;

  const ButtonDesign(this.text , this.color ,{ this.onclick ,this.icon});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(60)),
        onTap: onclick,
        splashColor: Colors.black,
        child: Container(
          width: size.width - 100,
          height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.8),
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon == null ? Container() : Expanded(child: Icon(icon,color:Colors.white) , flex: 1,),
              Expanded(child: Center(child: Text(text , style: TextStyle( letterSpacing: 3 , fontWeight: FontWeight.w800 , color: Colors.white),)) , flex: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
