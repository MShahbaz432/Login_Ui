import 'package:flutter/material.dart';

class CustomeScafoold extends StatelessWidget {
  final Widget? child;
  const CustomeScafoold({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.jpg',
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          SafeArea(child: child!),
        ],
      ),
    );
  }
}
