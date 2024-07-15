import 'package:flutter/material.dart';

class StayHomeText extends StatelessWidget {
  const StayHomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          const TextSpan(
            text: 'fique em ',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0),
          ),
          TextSpan(
            text: 'casa',
            style: TextStyle(
              color: Colors.yellow[500],
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const TextSpan(
            text: ' !',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
