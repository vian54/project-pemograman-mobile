import 'package:flutter/material.dart';
import '../models/news.dart';
import '../widgets/footer_section.dart';

class NewsDetailPage extends StatelessWidget {
  final News news;
  const NewsDetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003366),
        title: Text(news.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(news.imageUrl, width: double.infinity, height: 300, fit: BoxFit.cover),
            ),
            const SizedBox(height: 18),
            Text(
              news.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(news.date, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 18),
            Text(news.content, style: const TextStyle(fontSize: 16, height: 1.6)),
            const SizedBox(height: 28),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
