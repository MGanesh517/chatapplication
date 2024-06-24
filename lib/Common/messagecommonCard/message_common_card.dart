import 'package:badges/badges.dart' as badges; // Ensure this package is correctly added to your pubspec.yaml
import 'package:flutter/material.dart';

class MessageCommonCard extends StatelessWidget {
  final String firstImage;
  final String personName;
  final String lastText;
  final String textTime;
  final String badge;
  final VoidCallback button;

  const MessageCommonCard({
    super.key,
    required this.firstImage,
    required this.personName,
    required this.lastText,
    required this.textTime,
    required this.button,
    required this.badge,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: button,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                firstImage,
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          personName,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Text(
                          textTime,
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xff797C7B)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          lastText,
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xff797C7B)),
                        ),
                        const Spacer(),
                        badges.Badge(
                          badgeContent: Text(
                            badge,
                            style: const TextStyle(color: Colors.white),
                          ),
                          child: const Icon(Icons.circle, size: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
