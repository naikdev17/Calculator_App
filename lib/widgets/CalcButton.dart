import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalcButton({
    Key? key,
    required this.text,
    required this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: Builder(builder: (context) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {
                callback(text);
              },
              child: Text(
                text,
                style: TextStyle(fontSize: textSize, color: Color(textColor)),
              ),
            ),
          );
        }),
      ),
    );
  }
}
