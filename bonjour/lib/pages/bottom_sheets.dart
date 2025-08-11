import 'package:flutter/material.dart';
import 'package:bonjour/utils/global_color.dart';

Widget buildBottomSheet(BuildContext context) {
  return FractionallySizedBox(
    widthFactor: 0.9,
    alignment: Alignment.center,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.20,
        minChildSize: 0.2,
        maxChildSize: 0.8,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            globalBackgroundColor.value = Colors.white,
                          },
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            globalFont.value = 'Playfair Display',
                          },
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Text(
                          'Playfair',
                          style: TextStyle(fontFamily: 'Playfair Display'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.blueGrey,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            globalBackgroundColor.value = Colors.blueGrey,
                          },
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            globalFont.value = 'Dancing Script',
                          },
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Text(
                          'Dancing',
                          style: TextStyle(fontFamily: 'Dancing Script'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.lightGreen,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            globalBackgroundColor.value = Colors.lightGreen,
                          },
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {globalFont.value = 'DMSerif'},
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Text(
                          'DMSerif',
                          style: TextStyle(fontFamily: 'DMSerif'),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.yellow,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            globalBackgroundColor.value = Colors.yellow,
                          },
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: WidgetStateProperty.all<CircleBorder>(
                              CircleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          onPressed: () => {globalFont.value = 'Fjalla'},
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Text('Fjalla', style: TextStyle(fontFamily: 'Fjalla')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
