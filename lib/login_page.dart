import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // debugShowCheckedModeBanner: false,
      body: Stack(
        children: [
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: height / 2,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: height / 2,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black.withOpacity(0.4),
                  Colors.transparent,
                ],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              )),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Don\'t have an account? ',
                  ),
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () =>
                          Navigator.pushReplacementNamed(context, '/signup'),
                  )
                ]),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              const Gap(40),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Align(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: 'Email'),
                          ],
                        ),
                      ),
                      const Gap(10),
                      TextField(
                          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[200]!)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[200]!)),
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.grey),
                      )),
                      const Gap(10),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: 'Password'),
                          ],
                        ),
                      ),
                      const Gap(10),
                      TextField(
                          obscureText: isPasswordVisible,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                icon: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[200]!)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[200]!)),
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                          )),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Transform.scale(
                                scale: 0.8,
                                child: CupertinoSwitch(
                                    trackColor: Colors.grey,
                                    value: rememberMe,
                                    onChanged: (bool value) {
                                      setState(() {
                                        rememberMe = value;
                                      });
                                    }),
                              ),
                              Text(
                                'Remember Me',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                        ],
                      ),
                      const Gap(20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            backgroundColor: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const Gap(30),
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              // indent: 10,
                              // endIndent: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              'Or Login with',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              // indent: 10,
                              // endIndent: 10,
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                child: Icon(
                                  Icons.apple,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  backgroundColor: Colors.grey[700]),
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                child: Icon(
                                  Icons.apple,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  backgroundColor: Colors.grey[700]),
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                child: Icon(
                                  Icons.facebook_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  backgroundColor: Colors.grey[700]),
                            ),
                          ),
                        ],
                      ),
                      const Gap(35),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
