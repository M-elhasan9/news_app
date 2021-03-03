import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        child: Icon(
                          Icons.add_business,
                          size: 100.0,
                          color: Colors.red,
                        ),
                        offset: Offset(0,-10),
                      ),
                      Text(
                        'Welcome!',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0, right: 48.0),
                        child: Text(
                          'Making friends is easy as waving your hand back and forth in easy step.',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: 4,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  'GET STARTED',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
