import 'package:flutter/material.dart';

class WelcomButton extends StatelessWidget {
  const WelcomButton(
      {super.key, this.buttonText, this.onTap, this.colors, this.textColor});
  final String? buttonText;
  final Widget? onTap;
  final Color? colors;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => onTap!));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
        ),
        child: Text(
          textAlign: TextAlign.center,
          buttonText!,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
    );
  }
}
