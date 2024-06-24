import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_project/Common/svginsidecontainer/svg_inside_ont.dart';
import 'package:my_project/routes/app_pages.dart';

class LoginAndCreate extends StatefulWidget {
  const LoginAndCreate({super.key});

  @override
  State<LoginAndCreate> createState() => _LoginAndCreateState();
}

class _LoginAndCreateState extends State<LoginAndCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(fit: StackFit.expand, children: [
          SvgPicture.asset(
            'assets/images/Onboarding.svg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/minilogo.svg'),
                        const SizedBox(width: 6),
                        const Text(
                          "Chatbox",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Connect friends ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 78)),
                        TextSpan(
                            text: 'easily & quickly',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 78)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Our chat app is the perfect way to stay connected with friends and family.',
                    style: TextStyle(fontSize: 20, color: Color(0xffB9C1BE)),
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
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Get.toNamed(Routes.createAccount);
                      },
                      height: 48,
                      minWidth: MediaQuery.of(context).size.width,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          "Sign up with mail",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          // side: const BorderSide(color: Color(0xff494DA8)),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 48)),
                      onPressed: () {
                        Get.toNamed(Routes.loginSignup);
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
        ]),
      ),
    );
  }
}
