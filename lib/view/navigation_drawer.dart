import'package:flutter/material.dart';
import '../view/feeds/facebook_feeds.dart';
import '../view/feeds/instagram_feed.dart';
import '../view/feeds/twitter_feed.dart';
import '../view/headLine_news.dart';
import '../view/home_screen.dart';
import '../models/NavMenuItem.dart';


class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigationMenu = [
    NavMenuItem("Explore", () => HomeScreen()),
    NavMenuItem("Headline News", () => HeadLineNews()),
    NavMenuItem("Twitter Feeds", () => TwitterFeed()),
    NavMenuItem("Instagram Feeds", ()=> InstagramFeed()),
    NavMenuItem("Facebook Feeds", ()=> FacebookFeeds()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 75.0, left: 24.0),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return ListTile(
              title: Text(
                navigationMenu[position].title,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return navigationMenu[position].destination();
                    },
                  ),
                );
              },
            );
          },
          itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}
