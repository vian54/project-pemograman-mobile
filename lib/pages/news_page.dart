import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/news_card.dart';
import '../widgets/footer_section.dart';
import '../widgets/section_title.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003366),
        title: const Text('Berita Fakultas'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: 'Berita Fakultas'),
            const SizedBox(height: 12),
            ...sampleNews.map((n) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: NewsCard(news: n),
            )),
            const SizedBox(height: 28),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
