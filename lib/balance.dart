import 'package:flutter/material.dart';

import 'dart:async';

int bal = 1000;
bool isLoading = true;

class balance extends StatefulWidget {
  @override
  State<balance> createState() => balanceState();
}

class balanceState extends State<balance> {
  void startTimer() {
    Timer.periodic(const Duration(seconds: 5), (t) {
      setState(() {
        isLoading = false;
      });
      t.cancel();
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading ? CircularProgressIndicator() : Balance(),
      ),
    );
  }
}

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => BalanceState();
}

class BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/Balance.gif'),
        ),
        Text(
          'Your Balance is',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$bal',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
