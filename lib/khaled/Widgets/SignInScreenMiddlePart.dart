import 'package:flutter/material.dart';
import 'package:sanus/khaled/Screens/ForgetPassword.dart';

class SignInScreenMiddlePart extends StatelessWidget {
  final Function onChange;
  final bool checkBoxValue;

  const SignInScreenMiddlePart(this.onChange, this.checkBoxValue);
  @override
  Widget build(BuildContext context) {
    return      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              onChanged: onChange,
              value: checkBoxValue,
              activeColor: Color(0xFFF7BB85),
            ),
            Text(
              'Remember me',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 40,),
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ForgetPassword()));
            },
            child: Text("Forget Password?"))
      ],
    );
  }
}
