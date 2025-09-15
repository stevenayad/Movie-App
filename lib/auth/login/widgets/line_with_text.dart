import 'package:flutter/material.dart';

class LineWithText extends StatelessWidget {
  final String text;
  final Color lineColor;
  final double thickness;
  

  const LineWithText({
    Key? key,
    required this.text,
    this.lineColor = Colors.grey,
    this.thickness = 1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: lineColor,
              thickness: thickness,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey
              )
            ),
          ),
          Expanded(
            child: Divider(
              color: lineColor,
              thickness: thickness,
            ),
          ),
        ],
      ),
    );
  }
}
