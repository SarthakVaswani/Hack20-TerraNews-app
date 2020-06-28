import 'package:flutter/material.dart';
import 'package:hack20/model/news.dart';
import '../widget/vertical_list_item.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          color: Color(0XFFE3E4EE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          elevation: 3,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    'Quick News',
                    style: TextStyle(
                        fontFamily: 'Arvo',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    itemCount: newsData.length,
                    itemBuilder: (ctx, i) => VerticalListItem(i),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
