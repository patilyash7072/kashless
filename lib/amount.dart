import 'package:flutter/material.dart';
import 'package:kashless/balance.dart';
import 'package:kashless/pin.dart';

class amount extends StatefulWidget {
  @override
  State<amount> createState() => _amountState();
}

class _amountState extends State<amount> {
  TextEditingController money = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 90,
              ),
              child: Text(
                'Enter Amount',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              'Enter Amount You Want To Send',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                controller: money,
                validator: (value) {
                  if (value == null) {
                    return ' Please Enter Value';
                  } else if (int.parse(value) > bal) {
                    return 'Enter sufficient amount';
                  } else {
                    bal = bal - int.parse(value);
                  }

                  return null;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: false, decimal: true),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                ),
                style: const TextStyle(
                  fontSize: 28.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Pin()));
                  } else {
                    const SnackBar(
                        content: Text(
                      'Enter Sufficient Amount',
                    ));
                  }
                },
                child: Container(
                  height: 40,
                  width: 100,
                  child: Center(
                      child: const Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 133, 197, 249),
                        Color.fromARGB(255, 29, 128, 209)
                      ])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
