import 'package:flutter/material.dart';

class GalleryThumb extends StatelessWidget {
  final String imageUrl;
  const GalleryThumb({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        imageUrl,
        width: 180,
        height: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}
