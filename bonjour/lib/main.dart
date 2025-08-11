import 'package:flutter/material.dart';
import 'package:bonjour/pages/main_page.dart';
import 'package:bonjour/utils/global_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bonjour/api/firebase_api.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:bonjour/utils/utils.dart';
import 'package:multi_value_listenable_builder/multi_value_listenable_builder.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Europe/Paris'));

  const AndroidInitializationSettings androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initSettings = InitializationSettings(android: androidInit);
  await flutterLocalNotificationsPlugin.initialize(initSettings);

  await Firebase.initializeApp();

  await FirebaseApi().init();
  runApp(const MyApp());  
}


class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MultiValueListenableBuilder(
      valueListenables: [
        globalBackgroundColor,
        globalFont
      ] ,
      builder: (context, value, child) {
        return MaterialApp(
          home: MainPage(),
        );
      },
    );
  }
}

