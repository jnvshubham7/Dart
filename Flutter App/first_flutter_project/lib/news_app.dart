import 'package:first_flutter_project/NewsCard.dart';
import 'package:first_flutter_project/NewsDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsGrid extends StatefulWidget {
  @override
  _NewsGridState createState() => _NewsGridState();
}

class _NewsGridState extends State<NewsGrid> {
  List<dynamic> _newsData = [];

  @override
  void initState() {
    super.initState();
    fetchNewsData();
  }

  Future<void> fetchNewsData() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=fa44c6cae5c94f739b7db22c2c7cc475'));

    if (response.statusCode == 200) {
      setState(() {
        _newsData = jsonDecode(response.body)['articles'];
      });
    } else {
      setState(() {
        _newsData = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _newsData.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 8 : 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.75,
            ),
            itemCount: _newsData.length,
            itemBuilder: (context, index) {
              final article = _newsData[index];
              return NewsCard(
                imageUrl: article['urlToImage'] ?? '',
                title: article['title'] ?? 'No Title',
                color: Colors.primaries[index % Colors.primaries.length],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsDetailScreen(article: article),
                    ),
                  );
                },
              );
            },
          );
  }
}
