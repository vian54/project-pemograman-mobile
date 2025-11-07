import 'package:flutter/material.dart';
import '../models/news.dart';
import '../pages/news_detail_page.dart';

class NewsItem extends StatelessWidget {
  final News news;

  const NewsItem({
    super.key,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    void openDetail() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => NewsDetailPage(news: news),
        ),
      );
    }

    return GestureDetector(
      onTap: openDetail,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                news.imageAsset,
                width: 140,
                height: 90,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 140,
                  height: 90,
                  color: Colors.grey[200],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    news.date,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    news.summary,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: openDetail,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5C000),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Baca Selengkapnya',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}