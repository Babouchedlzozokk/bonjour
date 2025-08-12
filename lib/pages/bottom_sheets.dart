import 'package:flutter/material.dart';
import 'package:bonjour/utils/utils.dart';

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
                        createColorButton(taupe),
                        Padding(padding: EdgeInsets.all(10)),
                        ...createFontButton('Playfair Display', 'Playfair')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        createColorButton(Colors.blueGrey),
                        Padding(padding: EdgeInsets.all(10)),
                        ...createFontButton('Dancing Script', 'Dancing')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        createColorButton(Colors.lightGreen),
                        Padding(padding: EdgeInsets.all(10)),
                        ...createFontButton('DMSerif', 'DMSerif')

                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        createColorButton(Colors.yellow),
                        Padding(padding: EdgeInsets.all(10)),
                        ...createFontButton('Fjalla', 'Fjalla')
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
