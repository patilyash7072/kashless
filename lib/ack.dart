import 'package:flutter/material.dart';
import 'paySuccess.dart';
import 'dart:async';

int bal = 70;
bool isLoading = true;

class ack extends StatefulWidget {
  @override
  State<ack> createState() => _ackState();
}

class _ackState extends State<ack> {
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
        child: isLoading ? CircularProgressIndicator() : paySuccess(),
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
