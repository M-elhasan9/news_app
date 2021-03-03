import 'package:flutter/material.dart';
import '../models/pagemodel.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
List<PageModel> pages= List<PageModel>();

void _addPages(){
  pages.add(PageModel('Welcome!',
    'test1-Making friends is easy as waving your hand back and forth in easy step.',
    Icons.sports_soccer, 'assets/images/1.jpg',),);
  pages.add(PageModel('Plane!',
    'test2-Making friends is easy as waving your hand back and forth in easy step.',
    Icons.airplanemode_active, 'assets/images/2.jpg',),);
  pages.add(PageModel('Alarm!',
    'test3-Making friends is easy as waving your hand back and forth in easy step.',
    Icons.coronavirus_outlined, 'assets/images/3.jpg',),);
  pages.add(PageModel('Corona!',
    'test4-Making friends is easy as waving your hand back and forth in easy step.',
    Icons.coronavirus, 'assets/images/4.jpg',),);
}
  @override
  Widget build(BuildContext context) {
    _addPages();

    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            body: PageView.builder(
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage(pages[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.translate(
                          child: Icon(pages[index].icon
                            ,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          offset: Offset(0, -10),
                        ),
                        Text(
                          pages[index].title,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 48.0, right: 48.0, top: 24),
                          child: Text(
                            pages[index].description,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              itemCount: pages.length,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
              const EdgeInsets.only(left: 42.0, right: 42.0, bottom: 24),
              child: SizedBox(
                width: double.infinity,
                height: 42,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 1.5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
