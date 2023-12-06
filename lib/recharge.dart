import 'package:flutter/material.dart';
import 'package:kashless/cmgsoon.dart';

class Recharge extends StatelessWidget {
  const Recharge({super.key});

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
                      .push(MaterialPageRoute(builder: (context) => cmgsoon()));
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
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Jio_logo.jpg'),
                      ),
                      Text(
                        '  Jio',
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
              bottom: MediaQuery.of(context).size.height / 6,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => cmgsoon()));
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
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Airtel_logo.jpg'),
                      ),
                      Text(
                        '  Airtel',
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
            right: 50,
            bottom: MediaQuery.of(context).size.height / 3.8,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => cmgsoon()));
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
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Vi_logo.jpg'),
                    ),
                    Text(
                      '  Vi',
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
            bottom: MediaQuery.of(context).size.height / 6,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => cmgsoon()));
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
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/Bsnl_logo.jpg'),
                    ),
                    Text(
                      '  Bsnl',
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
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red;
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
      text: 'Recharge',
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
      text: 'Now Recharge Instantly',
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
      text: 'With Your Favourite Pack',
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
