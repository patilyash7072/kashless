import 'package:flutter/material.dart';
import 'package:kashless/balance.dart';
import 'package:kashless/myqr.dart';
import 'package:kashless/qrcode.dart';

import 'recharge.dart';
import 'contacts.dart';
import 'ticket.dart';
import 'stocks.dart';

import 'ack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor mycolor =
      MaterialColor(Color.fromRGBO(204, 148, 52, 1).value, <int, Color>{
    50: Color.fromRGBO(204, 148, 52, 1),
    100: Color.fromRGBO(204, 148, 52, 1),
    200: Color.fromRGBO(204, 148, 52, 1),
    300: Color.fromRGBO(204, 148, 52, 1),
    400: Color.fromRGBO(204, 148, 52, 1),
    500: Color.fromRGBO(204, 148, 52, 1),
    600: Color.fromRGBO(204, 148, 52, 1),
    700: Color.fromRGBO(204, 148, 52, 1),
    800: Color.fromRGBO(204, 148, 52, 1),
    900: Color.fromRGBO(204, 148, 52, 1),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.white //here you can give the text color
            ),
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  Widget index = Home();
  var newcolor = Color.fromRGBO(204, 148, 52, 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: newcolor,
          elevation: 0.0,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/kashless_logo.jpg'),
                    ),
                    Text(
                      '  Kashless',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                title: const Text('Home'),
                onTap: () {
                  newcolor = Color.fromRGBO(204, 148, 52, 1);
                  Navigator.pop(context);
                  setState(() {
                    index = Home();
                  });
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.electric_bolt,
                    color: Colors.white,
                  ),
                ),
                title: const Text('Recharge'),
                onTap: () {
                  newcolor = Colors.red;
                  Navigator.pop(context);
                  setState(() {
                    index = Recharge();
                  });
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                ),
                title: const Text('Ticket'),
                onTap: () {
                  Navigator.pop(context);
                  newcolor = Colors.purple;
                  setState(() {
                    index = Ticket();
                  });
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: const Text('Contacts'),
                onTap: () {
                  Navigator.pop(context);

                  newcolor = Colors.blue;
                  setState(() {
                    index = Contacts();
                  });
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.currency_rupee,
                    color: Colors.white,
                  ),
                ),
                title: const Text('Investment'),
                onTap: () {
                  Navigator.pop(context);
                  newcolor = Colors.green;
                  setState(() {
                    index = Stocks();
                  });
                },
              ),
            ],
          ),
        ),
        body: index,
        floatingActionButton: FloatingActionButton(
          backgroundColor: newcolor,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScanQrPage(),
              ),
            );
          },
          child: Icon(Icons.qr_code, color: Colors.white),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white),
          child: CustomPaint(
            painter: CurvePainter(),
          ),
        ),
        Positioned(
          left: 50,
          bottom: MediaQuery.of(context).size.height / 4,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ack(),
              ));
            },
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => balance()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2.75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                    ),
                    Text(
                      'Balance',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 50,
          bottom: MediaQuery.of(context).size.height / 4,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => myqr(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2.75,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.qr_code,
                    color: Colors.black,
                  ),
                  Text(
                    'QR Code',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color.fromRGBO(204, 148, 52, 1);
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.5 - 56);
    path.quadraticBezierTo(
        size.width, size.height / 3 - 56, size.width, size.height * 0.2 - 56);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);

    var textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );

    var textSpan = TextSpan(
      text: 'Welcome to',
      style: textStyle,
    );

    var textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    var xCenter = (size.width - textPainter.width) / 3;
    var yCenter = (size.height - textPainter.height) / 8 - 56;
    var offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);

    textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 50,
    );

    textSpan = TextSpan(
      text: 'Kashless',
      style: textStyle,
    );

    textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    xCenter = (size.width - textPainter.width) / 2.5;
    yCenter = (size.height - textPainter.height) / 5 - 56;
    offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(CurvePainter oldDelegate) => true;
}
