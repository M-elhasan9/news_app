import 'package:flutter/material.dart';
import '../view/navigation_drawer.dart';
class FacebookFeeds extends StatefulWidget {
  @override
  _FacebookFeedsState createState() => _FacebookFeedsState();
}

class _FacebookFeedsState extends State<FacebookFeeds> {

  TextStyle _hashTagStyle = TextStyle(
    color: Colors.indigoAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Feeds'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _drawHeader(),
                _drawTitle(),
                _drawHashTags(),
                _drawBody(),
                _drawFooter(),
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/images/1.jpg'),
                radius: 24.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        Transform.translate(
          offset: Offset(-10, 0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
                color: Colors.red,
              ),
              Text(
                '25',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0,left: 10.0,right: 12.0),
      child: Text(
        'We also talk about the future of work as the robots',
        style: TextStyle(
          color: Colors.grey.shade800,
        ),
      ),
    );
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(

        children: [
          TextButton(onPressed: (){}, child: Text('#advance',style: _hashTagStyle,),),
          TextButton(onPressed: (){}, child: Text('#advance',style: _hashTagStyle,),),
          TextButton(onPressed: (){}, child: Text('#advance',style: _hashTagStyle,),),
          TextButton(onPressed: (){}, child: Text('#advance',style: _hashTagStyle,),),
        ],
      ),
    );
  }

  Widget _drawBody() {
    return SizedBox(
      child: Image(image: ExactAssetImage('assets/images/2.jpg'),
        fit: BoxFit.cover,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.3,
    );
  }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(onPressed: (){}, child: Text('10 COMMENTS'),),
        Row(
          children: [
            TextButton(onPressed: (){}, child: Text('SHARE'),),
            TextButton(onPressed: (){}, child: Text('OPEN'),),
          ],
        ),
      ],
    );
  }

}
