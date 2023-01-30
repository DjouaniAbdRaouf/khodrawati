// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var controller = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: Text("Skip")),
            TextButton(onPressed: () {}, child: Text("Next")),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 80.0),
        child: PageView(
          controller: controller,
          children: [
            Container(
              color: Colors.amber,
              child: const Center(
                child: Text("Page 1"),
              ),
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text("Page 2"),
              ),
            ),
            Center(
              child: SmoothPageIndicator(controller: controller, count: 3),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text("Page 3"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
