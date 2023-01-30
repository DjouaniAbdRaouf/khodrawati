// ignore_for_file: avoid_unnecessary_containers, file_names, unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:khodrawati/constants.dart';

class HomePgaeKhodawati extends StatelessWidget {
  const HomePgaeKhodawati({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                "Hello from Khodrawati",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
