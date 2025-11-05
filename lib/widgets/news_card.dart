import 'package:flutter/material.dart';
import '../models/news.dart';
import '../pages/news_detail_page.dart';

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => NewsDetailPage(news: news)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(news.imageUrl, width: 140, height: 90, fit: BoxFit.cover),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(news.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 6),
                    Text(news.date, style: TextStyle(color: Colors.grey[700], fontSize: 12)),
                    const SizedBox(height: 8),
                    Text(news.summary, maxLines: 2, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFF6B500), foregroundColor: Colors.black),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => NewsDetailPage(news: news))),
                      child: Text('Baca Selengkapnya'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
