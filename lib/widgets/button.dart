import 'package:flutter/material.dart';

class Button extends StatelessWidget {
 final String digit;
 final Color color;
 final Color hue;

 Button(
     this.digit,
 {
   this.color = Colors.white, this.hue
 }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),

      child: Center(
        child: Text(
          digit,
          style: TextStyle(fontSize: 20,
          color: hue, fontWeight: FontWeight.bold)
        ),
      ),

    );
  }
}
