import 'package:flutter/material.dart';
import 'package:kashless/amount.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
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
              bottom: MediaQuery.of(context).size.height / 3.8,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => amount()));
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width / 2.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/Hemant.jpg'),
                      ),
                      Text(
                        'Hemant',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
            left: 50,
            bottom: MediaQuery.of(context).size.height / 20,
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => amount()));
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width / 2.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/Neha.jpg'),
                      ),
                      Text(
                        'Neha',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Positioned(
            right: 50,
            bottom: MediaQuery.of(context).size.height / 3.8,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => amount()));
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width / 2.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/Shruti.jpg'),
                    ),
                    Text(
                      'Shruti',
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
          Positioned(
            right: 50,
            bottom: MediaQuery.of(context).size.height / 20,
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 2.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.add, size: 50),
                  ),
                  Text(
                    'New',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
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
      fontSize: 50,
    );

    var textSpan = TextSpan(
      text: 'Contacts',
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
    var yCenter = (size.height - textPainter.height) / 8 - 30;
    var offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);

    textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );

    textSpan = TextSpan(
      text: 'Now Transfer Instantly',
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

    xCenter = (size.width - textPainter.width) / 2.75;
    yCenter = (size.height - textPainter.height) / 4.5 - 30;
    offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);

    textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );

    textSpan = TextSpan(
      text: 'To Your Favourite Person',
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
    yCenter = (size.height - textPainter.height) / 3.8 - 30;
    offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(CurvePainter oldDelegate) => true;
}
