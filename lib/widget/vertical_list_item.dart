import 'package:flutter/material.dart';
import 'package:hack20/model/news.dart';
import '../screens/news_details_screen.dart';

class VerticalListItem extends StatelessWidget {
  final int index;
  VerticalListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              NewsDetailsScreen.routeName,
              arguments: {
                'id': newsData[index].id,
                'title': newsData[index].title,
                'imageUrl': newsData[index].imageUrl,
                'description': newsData[index].description,
                'fulldescription': newsData[index].fulldescription,
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: newsData[index].id,
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          newsData[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 100,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          newsData[index].title,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 50,
                          width: 400,
                          child: Text(
                            newsData[index].description,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Card(
            shadowColor: Color(0XFF302b63),
            color: Color(0XFFFFFFFF),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/covid.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 100,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  child: Text(
                    'WHO joins forces with 17 central European countries to improve collective COVID-19 response',
                    style:
                        TextStyle(fontSize: 14.2, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
