import 'package:flutter/material.dart';
import '../view/home_tabs/favorites.dart';
import '../view/home_tabs/popular.dart';
import '../view/navigation_drawer.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews>
    with TickerProviderStateMixin {
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
        title: Text('Headline News'),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
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
            Favorites(),
            Popular(),
            Favorites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
