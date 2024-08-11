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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
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

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  NewsCard({required this.imageUrl, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                  child: imageUrl.isEmpty
                      ? Container(
                          height: 150,
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.broken_image, color: Colors.grey),
                          ),
                        )
                      : Image.network(
                          imageUrl,
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 150,
                              color: Colors.grey[300],
                              child: const Center(
                                child: Icon(Icons.error, color: Colors.red),
                              ),
                            );
                          },
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewsDetailScreen extends StatelessWidget {
  final dynamic article;

  NewsDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article['title'] ?? 'News Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article['urlToImage'] != null && article['urlToImage'] != '')
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    article['urlToImage'],
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 200,
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(Icons.error, color: Colors.red),
                        ),
                      );
                    },
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                article['title'] ?? 'No Title',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                article['content'] ?? 'No content available',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              if (article['url'] != null)
                ElevatedButton(
                  onPressed: () {
                    // Use a package like url_launcher to open the full article in a browser.
                  },
                  child: const Text('Read Full Article'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
