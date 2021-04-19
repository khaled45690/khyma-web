// import 'dart:convert';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sanus/khaled/StateDependentClasses/RegistrationScreenState.dart';
// import 'package:sanus/khaled/Widgets/CustomTextField.dart';
// import 'package:sanus/khaled/Widgets/MainShapeWidget.dart';
// import 'package:sanus/khaled/Widgets/SignInScreenMiddlePart.dart';
// import 'package:sanus/khaled/Widgets/buttonDesign.dart';
// import 'package:http/http.dart' as http;
//
// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }
//
// class _SignInScreenState extends State<SignInScreen> {
//   bool checkBoxValue = false;
//   Map data = {};
//   Map dataError = {};
//   signInWithFaceBook()async {
//     print(kIsWeb);
//     // print(Platform.localHostname);
//     // print(Platform.numberOfProcessors);
//     // print(Platform.operatingSystem);
//     if (kIsWeb) {
//       // final facebookSignIn = FacebookLoginWeb();
//       final LoginResult result = await FacebookAuth.instance.login(
//           permissions: ['email', 'public_profile', "user_photos"]
//         // permissions:['public_profile','email','pages_show_list','pages_messaging','pages_manage_metadata'],
//       );
//       // print(result.accessToken.userId);
//       print(result.status);
//       final userData = await FacebookAuth.instance.getUserData();
//       print(userData);
//       var url = Uri.parse('https://elkhyma.com/ramadan/addfb.php');
//       print('Response status:');
//       var response = await http.post(url, body: { "dataJson":jsonEncode(userData)});
//       print('Response status: ${response.statusCode}');
//       print('Response status: ${response.statusCode}');
//       print('Response body: ${response.body}');
//
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     RegistrationScreenState rss = new RegistrationScreenState(this);
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFD83D3A),
//         iconTheme: IconThemeData(color: Colors.white),
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             size: 18,
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: MainShapeWidget(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Container(
//               width: size.width - 50,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Let's sign you in",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   CustomTextField("Email", dataError["Email"], (value) {
//                     rss.onChange(value, "Email");
//                   }),
//                   CustomTextField("Password", dataError["Password"], (value) {
//                     rss.onChange(value, "Password");
//                   }),
//                   SizedBox(height: 40,),
//                   SignInScreenMiddlePart((value)=> setState(() {
//                       checkBoxValue = value;
//                     }), checkBoxValue),
//
//                   ButtonDesign("SIGN IN", Colors.grey),
//                   ButtonDesign(
//                     "Continue with google",
//                     Colors.red,
//                     icon: FontAwesomeIcons.google,
//                   ),
//                   ButtonDesign(
//                     "Continue with facebook",
//                     Colors.blue,
//                     icon: FontAwesomeIcons.facebookF,
//                     onclick: signInWithFaceBook,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
