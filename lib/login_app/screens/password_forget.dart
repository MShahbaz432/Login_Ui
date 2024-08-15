import 'package:flutter/material.dart';
import 'package:login_design_ui/login_app/widgets/custome_scafoold.dart';

class PasswordForget extends StatefulWidget {
  const PasswordForget({super.key});

  @override
  State<PasswordForget> createState() => _PasswordForgetState();
}

class _PasswordForgetState extends State<PasswordForget> {
  @override
  Widget build(BuildContext context) {
    return CustomeScafoold(
      child: Text('forget password'),
    );
  }
}
