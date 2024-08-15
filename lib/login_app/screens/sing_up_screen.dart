import 'package:flutter/material.dart';
import 'package:login_design_ui/login_app/widgets/botton.dart';
import 'package:login_design_ui/login_app/widgets/custome_scafoold.dart';

class SingUpScreenn extends StatefulWidget {
  const SingUpScreenn({super.key});

  @override
  State<SingUpScreenn> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreenn> {
  var remmemberpassword = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomeScafoold(
        child: Column(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 40,
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcom Back',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Full Name';
                        }
                        {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        label: Text('FullName'),
                        hintText: 'Enter your FullName',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        }
                        {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        label: Text('Email'),
                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(
                            value: remmemberpassword,
                            onChanged: (bool? value) {
                              setState(() {
                                remmemberpassword = value!;
                              });
                            }),
                        Text(
                          'Remmember me',
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Forget Password?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate() &&
                              remmemberpassword) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Processing Daa'),
                              ),
                            );
                          } else if (!remmemberpassword) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'please agree to the processing person data'),
                              ),
                            );
                          }
                        },
                        child: Botton(
                          textBottons: 'Sign Up',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 10,
                          ),
                          child: Text(
                            'Sign Up with',
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/icons/apple.png'),
                          width: 30,
                        ),
                        Image(
                          image: AssetImage('assets/icons/facebook.png'),
                          width: 30,
                        ),
                        Image(
                          image: AssetImage('assets/icons/twitter.png'),
                          width: 30,
                        ),
                        Image(
                          image: AssetImage('assets/icons/google.png'),
                          width: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.black45),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingUpScreenn()));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
