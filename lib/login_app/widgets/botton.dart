import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final String? textBottons;
  Botton({super.key, this.textBottons});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: Center(
        child: Text(
          textBottons!,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
