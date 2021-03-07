import 'dart:math';

import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Color> colorList = [
    Colors.red,
    Colors.yellow,
    Colors.teal,
    Colors.purpleAccent,
    Colors.lime,
    Colors.black,
    Colors.indigoAccent,
  ];
  Random random = Random();

  Color _getRandomColor() {
    return colorList[random.nextInt(colorList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (
        context,
        position,
      ) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                _authorRow(),
                SizedBox(height: 8.0,),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/3.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              width: 50,
              height: 50,
              margin: EdgeInsets.only(
                left: 0.0,
                right: 12.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Michael Adams',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '15 min',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 6.0,),
                    Text(
                      'Life Style',
                      style: TextStyle(
                        color: _getRandomColor(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
          ),
          onPressed: () {},
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: 124.0,
          height: 124.0,
          margin: EdgeInsets.only(right: 12.0),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                'Teach Tent: Old phones and safe social',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'We also talk about the future of work as the robots advance, and we ask whether a retro phone.',
                style: TextStyle(fontSize: 16.0, height: 1.4,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
