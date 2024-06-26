import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Common/common_components/common_comp.dart';
import 'package:my_project/Common/custom_appbar/custom_appbar.dart';
import 'package:my_project/Common/svginsidecontainer/svg_inside_ont.dart';
import 'package:my_project/routes/app_pages.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingChild: const Icon(Icons.arrow_back),
        leadingLink: () {
          Get.back();
        },
      ),
        body: SafeArea(
            bottom: false,
            child: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Container(height: 60),
                        const Text(
                          "Login to ChatBox",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Flexible(
                                  child: Container(
                                      height: 1,
                                      color: const Color(0xffCDD1D0))),
                              const SizedBox(width: 10),
                              const Text("OR",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff797C7B))),
                              const SizedBox(width: 10),
                              Flexible(
                                  child: Container(
                                      height: 1,
                                      color: const Color(0xffCDD1D0)))
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
                        Container(height: 100,)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15,right: 15),
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Get.toNamed(Routes.createAccount);
                            },
                            height: 48,
                            minWidth: MediaQuery.of(context).size.width,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            color: const Color(0xff24786D),
                            child: const Center(
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                // side: const BorderSide(color: Color(0xff494DA8)),
                                minimumSize:
                                    Size(MediaQuery.of(context).size.width, 48)),
                            onPressed: () {
                              Get.toNamed(Routes.messageScreen);
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Color(0xff24786D),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
