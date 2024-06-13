import 'package:flutter/material.dart';
import 'package:my_project/Common/common_components/common_comp.dart';
import 'package:my_project/Common/svginsidecontainer/svg_inside_ont.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(41),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login to ChatBox",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000E08)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Center(
                  child: Text(
                    "Welcome back! Sign in using your social account or email to continue us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff797C7B)),
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularContainerWithSVG(
                        firstImage: 'assets/images/facebook.svg'),
                    SizedBox(width: 18),
                    CircularContainerWithSVG(
                        firstImage: 'assets/images/google.svg'),
                    SizedBox(width: 18),
                    CircularContainerWithSVG(
                        firstImage: 'assets/images/apple.svg'),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                              height: 1, color: const Color(0xffCDD1D0))),
                      const SizedBox(width: 10),
                      const Text("OR",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xff797C7B))),
                      const SizedBox(width: 10),
                      Flexible(
                          child: Container(
                              height: 1, color: const Color(0xffCDD1D0)))
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CommonComponents.defaultTextField(
                  context,
                  title: 'Your Email',
                  onChange: (value) {},
                  validator: (val) {
                    if (val == '') {
                      return 'Username is required';
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Enter Email',
                ),
                CommonComponents.defaultTextField(
                  context,
                  title: 'Password',
                  onChange: (value) {},
                  validator: (val) {
                    if (val == '') {
                      return 'Username is required';
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Enter Password',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
