import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:bonjour/utils/global_color.dart';
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

void showNotification() async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'your_channel_id',
    'your_channel_name',
    channelDescription: 'your_channel_description',
    importance: Importance.max,
    priority: Priority.high,
    showWhen: false,
  );
  const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(0, "Dis Bonsoir", "Il est 18h", platformChannelSpecifics);
}

String getHour() {
  DateTime now = DateTime.now();
  if (now.hour > 5 && now.hour < 18) {
    return "Bonjour";
  } else  {
    return "Bonsoir";
  }
}

ElevatedButton createColorButton(Color color) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(
        color,
      ),
      shape: WidgetStateProperty.all<CircleBorder>(
        CircleBorder(
          side: BorderSide(color: Colors.black),
        ),
      ),
    ),
    onPressed: () => {
      globalBackgroundColor.value = color,
    },
    child: Text(
      "",
      style: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );
}