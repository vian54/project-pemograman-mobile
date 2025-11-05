import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF003366),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Fakultas Sains dan Teknologi - UMSIDA',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          Text(
            'Jl. Raya Gelam No. 250, Candi, Sidoarjo, Jawa Timur\nTelp: (031) 8945444 | Email: fst@umsida.ac.id',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              '© 2025 Fakultas Sains dan Teknologi - Universitas Muhammadiyah Sidoarjo',
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
