import 'package:flutter/material.dart';

class cmgsoon extends StatefulWidget {
  const cmgsoon({super.key});

  @override
  State<cmgsoon> createState() => cmgsoonState();
}

class cmgsoonState extends State<cmgsoon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                "assets/images/cmgsoon.gif",
              ),
            ),
            Text(
              'Coming Soon',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
