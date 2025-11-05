import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://umsida.ac.id/wp-content/uploads/2023/05/fst-banner.jpg',
          width: double.infinity,
          height: 320,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 320,
          color: Colors.black.withOpacity(0.4),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Fakultas Sains dan Teknologi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Universitas Muhammadiyah Sidoarjo',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        )
      ],
    );
  }
}
