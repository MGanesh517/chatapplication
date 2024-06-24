import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Common/messagecommonCard/message_common_card.dart';
import 'package:my_project/Common/svginsidecontainer/svg_inside_ont.dart';
import 'package:my_project/routes/app_pages.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000e08),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: StoryAvator(
                      firstImage: 'assets/images/userimage.png',
                      height: 75,
                      width: 75,
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return MessageCommonCard(
                              firstImage: 'assets/images/userimage.png',
                              personName: 'Ganesh',
                              lastText: 'Hi! How Are you',
                              textTime: '17:30',
                              button: () {
                                Get.toNamed(Routes.chatPage);
                              },
                              badge: '3',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
