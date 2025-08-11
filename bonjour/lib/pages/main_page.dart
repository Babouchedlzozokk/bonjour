import 'package:flutter/material.dart';
import 'package:bonjour/utils/global_color.dart';
import 'package:bonjour/utils/utils.dart';
import 'package:bonjour/pages/bottom_sheets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors
          .transparent,
      builder: (context) {
        return buildBottomSheet(context);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalBackgroundColor.value,
      body: Stack(
        children: [
          Positioned(
            bottom: 30,
            left: 30,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () => _openBottomSheet(context),
              label: Text(
                "Ok",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              icon: Icon(Icons.color_lens, color: Colors.black, size: 24),
            ),
          ),
          /*Positioned(
            bottom: 30,
            right: 30,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () => showNotification(),
              label: Text(
                "Ok",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              icon: Icon(Icons.alarm, color: Colors.black, size: 24),
            ),
          ),*/
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getHour(),
                  style: TextStyle(fontSize: 42, fontFamily: globalFont.value),
                ),
                Padding(padding: EdgeInsets.all(10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
