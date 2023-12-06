import 'package:flutter/material.dart';

class paySuccess extends StatefulWidget {
  const paySuccess({super.key});

  @override
  State<paySuccess> createState() => _paySuccessState();
}

class _paySuccessState extends State<paySuccess> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "assets/images/green_tick.gif",
          height: 125.0,
          width: 125.0,
        ),
        Text(
          'Payment Successful',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
