import 'package:flutter/material.dart';

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
                  child: const Text('Read Full '),
                ),
            ],
          ),
        ),
      ),
    );
  }
}