import 'package:flutter/material.dart';
import 'package:login_design_ui/login_app/screens/sign_in_screen.dart';
import 'package:login_design_ui/login_app/screens/sing_up_screen.dart';
import 'package:login_design_ui/login_app/widgets/custome_scafoold.dart';
import 'package:login_design_ui/login_app/widgets/welcom_button.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});
  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomeScafoold(
      child: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome Back!\n',
                          style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              'Enter  personal detail to your employee account',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreenn(),
                      colors: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomButton(
                      buttonText: 'Sign Up',
                      onTap: SingUpScreenn(),
                      colors: Colors.white,
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
