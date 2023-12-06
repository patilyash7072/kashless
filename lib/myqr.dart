import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class myqr extends StatelessWidget {
  const myqr({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your QR Code',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  'Scan this code to receive money',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                child: QrImage(
                  data: "this is qr",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
