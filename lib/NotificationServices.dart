import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:sanus/BackGroundTemplate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class NotificationServices {
  NotificationServices() {}
  Future<void> _configureLocalTimeZone() async {
    // const MethodChannel platform =
    //     MethodChannel('dexterx.dev/flutter_local_notifications_example');
    // tz.initializeTimeZones();
    // final String timeZoneName =
    //     await platform.invokeMethod<String>('getTimeZoneName');
    // tz.setLocalLocation(tz.getLocation(timeZoneName));
  }

  Future selectNotification(String str) {
    print("Selected   ");
    print(str);
  }

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    print("payload = ${payload}");
  }

//   Future showNotification(
//       BuildContext context, Widget destinationPage, Duration dur) async {
//     FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();
// // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     final IOSInitializationSettings initializationSettingsIOS =
//         IOSInitializationSettings(
//             onDidReceiveLocalNotification: onDidReceiveLocalNotification);
//     final MacOSInitializationSettings initializationSettingsMacOS =
//         MacOSInitializationSettings();
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: initializationSettingsAndroid,
//             iOS: initializationSettingsIOS,
//             macOS: initializationSettingsMacOS);
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: selectNotification);
//     await _configureLocalTimeZone();
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//             'your channel id', 'your channel name', 'your channel description',
//             importance: Importance.max,
//             priority: Priority.high,
//             showWhen: false);
//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);
//
//     // show notification now
//     // await flutterLocalNotificationsPlugin.show(
//     //     0, 'plain title', 'plain body', platformChannelSpecifics,
//     //     payload: 'item x');
//
//     await flutterLocalNotificationsPlugin.zonedSchedule(
//         0,
//         'scheduled title',
//         'scheduled body',
//         tz.TZDateTime.now(tz.local).add(dur),
//         const NotificationDetails(
//             android: AndroidNotificationDetails('your channel id',
//                 'your channel name', 'your channel description')),
//         androidAllowWhileIdle: true,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime);
//   }
}
