import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view/navigation_drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, position) {
          return Card(
            color: Colors.blue.shade50,
            child: Column(
              children: [
                _cardHeader(),
                _cardBody(),
                _drawLine(),
                _cardFooter(),
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _cardHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/1.jpg'),
            radius: 24.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Christina Meyers',
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  '@ch_meyers',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Fri, 12 May 2017 . 14.30',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 8.0,
      ),
      child: Text(
        'We also talk about the future of work as the robots advance, and we ask whether a retro phone',
        style: TextStyle(height: 1.2,fontSize: 15.0),
      ),
    );
  }

  Widget _cardFooter() {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.repeat,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              Text(
                '25',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'SHARE',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('OPEN'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
      margin: EdgeInsets.only(top: 8.0),
    );
  }
}
