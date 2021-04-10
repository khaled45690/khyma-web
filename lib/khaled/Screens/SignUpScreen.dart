import 'package:flutter/material.dart';
import 'package:sanus/khaled/Screens/SignInScreen.dart';
import 'package:sanus/khaled/StateDependentClasses/RegistrationScreenState.dart';
import 'package:sanus/khaled/Widgets/CustomTextField.dart';
import 'package:sanus/khaled/Widgets/MainShapeWidget.dart';
import 'package:sanus/khaled/Widgets/buttonDesign.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../HomePage.dart';

class SignUpScreen extends StatefulWidget {

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        title: Row(children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 18,
            ),
            onPressed: () {
              // do something
            },
          ),
        ]),
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
                    "Create your account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  CustomTextField("UserName", dataError["UserName"], (value) {
                    rss.onChange(value, "UserName");
                  }),
                  CustomTextField("Email", dataError["Email"], (value) {
                    rss.onChange(value, "Email");
                  }),
                  CustomTextField("Phone", dataError["Phone"], (value) {
                    rss.onChange(value, "Phone");
                  }),
                  CustomTextField("Password", dataError["Password"], (value) {
                    rss.onChange(value, "Password");
                  }),
                  CustomTextField("ConfirmPassword", dataError["ConfirmPassword"], (value) {
                    rss.onChange(value, "ConfirmPassword");
                  }),
                  ButtonDesign("SIGN UP" , Colors.grey),
                  ButtonDesign("Continue with google" , Colors.red ,icon: FontAwesomeIcons.google,),
                  ButtonDesign("Continue with facebook" , Colors.blue , icon: FontAwesomeIcons.facebookF,),
                  InkWell(onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            SignInScreen()));
                  }, child: Text("Already have account? Sign In"),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
