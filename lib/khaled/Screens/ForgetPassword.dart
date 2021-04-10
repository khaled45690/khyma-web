import 'package:flutter/material.dart';
import 'package:sanus/khaled/StateDependentClasses/RegistrationScreenState.dart';
import 'package:sanus/khaled/Widgets/CustomTextField.dart';
import 'package:sanus/khaled/Widgets/MainShapeWidget.dart';
import 'package:sanus/khaled/Widgets/buttonDesign.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  Map dataError = {};
  @override
  Widget build(BuildContext context) {
    RegistrationScreenState rss = new RegistrationScreenState(this);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD83D3A),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
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
                    "Forget your password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Enter your email address and we will send you instructions on how to reset your password.",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextField("Email", dataError["Email"], (value) {
                    rss.onChange(value, "Email");
                  }),
                  SizedBox(
                    height: size.height - 400,
                  ),
                  ButtonDesign("RECOVER EMAIL", Colors.red.shade700),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
