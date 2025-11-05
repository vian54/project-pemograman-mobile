import 'package:flutter/material.dart';
import '../pages/details_page.dart';

class NewsItem extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String date;
  final String excerpt;
  final String fullContent;

  const NewsItem({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.date,
    required this.excerpt,
    required this.fullContent,
  });

  @override
  Widget build(BuildContext context) {
    void openDetail() {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => DetailsPage(
              title: title,
              date: date,
              content: fullContent,
              imageAsset: imageAsset)));
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
                child: Image.asset(imageAsset,
                    width: 120,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                        width: 120, height: 80, color: Colors.grey[200]))),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 8),
                    Text(date,
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 12)),
                    const SizedBox(height: 8),
                    Text(excerpt,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey[700])),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: openDetail,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF5C000),
                          elevation: 0),
                      child: const Text('Baca Selengkapnya',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
