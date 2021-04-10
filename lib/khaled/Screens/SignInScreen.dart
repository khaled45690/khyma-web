import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sanus/khaled/StateDependentClasses/RegistrationScreenState.dart';
import 'package:sanus/khaled/Widgets/CustomTextField.dart';
import 'package:sanus/khaled/Widgets/MainShapeWidget.dart';
import 'package:sanus/khaled/Widgets/SignInScreenMiddlePart.dart';
import 'package:sanus/khaled/Widgets/buttonDesign.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool checkBoxValue = false;
  Map data = {};
  Map dataError = {};
  @override
  Widget build(BuildContext context) {
    RegistrationScreenState rss = new RegistrationScreenState(this);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD83D3A),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: MainShapeWidget(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: size.width - 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Let's sign you in",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  CustomTextField("Email", dataError["Email"], (value) {
                    rss.onChange(value, "Email");
                  }),
                  CustomTextField("Password", dataError["Password"], (value) {
                    rss.onChange(value, "Password");
                  }),
                  SizedBox(height: 40,),
                  SignInScreenMiddlePart((value)=> setState(() {
                      checkBoxValue = value;
                    }), checkBoxValue),

                  ButtonDesign("SIGN IN", Colors.grey),
                  ButtonDesign(
                    "Continue with google",
                    Colors.red,
                    icon: FontAwesomeIcons.google,
                  ),
                  ButtonDesign(
                    "Continue with facebook",
                    Colors.blue,
                    icon: FontAwesomeIcons.facebookF,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
