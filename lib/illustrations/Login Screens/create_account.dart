import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Common/common_components/common_comp.dart';
import 'package:my_project/Common/custom_appbar/custom_appbar.dart';
import 'package:my_project/Common/svginsidecontainer/svg_inside_ont.dart';
import 'package:my_project/routes/app_pages.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                          "Sign up To Email",
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
                            "Get chatting with friends and family today by signing up for our chat app!",
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
                          title: 'Your Name',
                          onChange: (value) {},
                          validator: (val) {
                            if (val == '') {
                              return 'Name is required';
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Name',
                        ),
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
                        CommonComponents.defaultTextField(
                          context,
                          title: 'Confirm Password',
                          onChange: (value) {},
                          validator: (val) {
                            if (val == '') {
                              return 'Confirm Password is required';
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter  Confirm Password',
                        ),
                        Container(height: 70,)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            // side: const BorderSide(color: Color(0xff494DA8)),
                            backgroundColor: const Color(0xff24786D),
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 48)),
                        onPressed: () {
                          Get.toNamed(Routes.bottomNav);
                        },
                        child: const Text(
                          "Create an Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
