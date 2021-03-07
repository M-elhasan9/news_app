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
        itemBuilder: (context, position) {
          return Card(
            child: Column(
              children: [
                _cardHeader(),
                _cardBody(),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  indent: MediaQuery.of(context).size.width * 0.1,
                  endIndent: MediaQuery.of(context).size.width * 0.1,
                ),
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
                Text('Christina Meyers'),
                Text('@ch_meyers'),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text('Fri, 12 May 2017 . 14.30'),
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
        style: TextStyle(height: 1.2),
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
                icon: Icon(Icons.repeat),
                onPressed: () {},
              ),
              Text('25'),
            ],
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Text('SHARE'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('OPEN'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
