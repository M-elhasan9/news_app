import 'package:flutter/material.dart';
import '../view/home_tabs/favorites.dart';
import '../view/home_tabs/popular.dart';
import '../view/home_tabs/whats_new.dart';
import '../view/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu { HELP, ABOUT, CONNECT, SETTINGS }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Explore'),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _popOutMenu(context),
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              text: "WHAT'S NEW",
            ),
            Tab(
              text: "POPULAR",
            ),
            Tab(
              text: "FAVORITE",
            ),
          ],
          indicatorColor: Colors.black,
          controller: _tabController,
        ),
      ),
      body: Center(
        child: TabBarView(
          children: [
            WhatsNew(),
            Popular(),
            Favorites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton<PopOutMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            child: Text('ABOUT'),
            value: PopOutMenu.ABOUT,
          ),
          PopupMenuItem<PopOutMenu>(
            child: Text('HELP'),
            value: PopOutMenu.HELP,
          ),
          PopupMenuItem<PopOutMenu>(
            child: Text('CONNECT'),
            value: PopOutMenu.CONNECT,
          ),
          PopupMenuItem<PopOutMenu>(
            child: Text('SETTINGS'),
            value: PopOutMenu.SETTINGS,
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {
        //TODO:
      },icon: Icon(Icons.more_vert),
    );
  }
}
