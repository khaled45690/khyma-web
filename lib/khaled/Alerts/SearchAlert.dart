import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanus/khaled/Widgets/buttonDesign.dart';

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
searchAlert(context, swarNames , onSubmit) {
  int onSelectItem = 0;
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      Size size = MediaQuery.of(context).size;
      return AlertDialog(
        clipBehavior: Clip.hardEdge,
        content: Container(
          height: 150,
          child: CupertinoPicker(
              itemExtent: 45,
              onSelectedItemChanged: (int value){onSelectItem = value;},
              children: [
                for (int i = 0; i < swarNames.length; i++)
                  Center(child: Text(swarNames[i], textDirection: TextDirection.rtl,))
              ]),
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width:100,child: ButtonDesign("Cancel", Color(0xFF383838) , onclick: ()=>Navigator.of(context).pop(),)),
                Container(width:100,child: ButtonDesign("Select", Color(0xFF383838), onclick: ()=> onSubmit(onSelectItem+1),),),
              ],
            ),
          ),

        ],
      );

        // Container(
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.all(Radius.circular(17)),
        //   ),
        //   width: size.width,
        //   height: 250,
        //   child: Column(
        //     children: [
        //       Container(
        //         width: size.width,
        //         height: 200,
        //         child: CupertinoPicker(
        //             itemExtent: 80,
        //             onSelectedItemChanged: (int value) {},
        //             children: [
        //               for (int i = 0; i < swarNames.length; i++)
        //                 Center(child: Text(swarNames[i]))
        //             ]),
        //       ),
        //       Row(
        //         children: [
        //           Builder(
        //               builder: (context) => ButtonDesign("Select", Colors.grey)
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // );
    },
  );
}
