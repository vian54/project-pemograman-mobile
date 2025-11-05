import 'package:flutter/material.dart';

class AgendaItem extends StatelessWidget {
  final String day;
  final String month;
  final String title;
  final String place;

  const AgendaItem(
      {super.key,
      required this.day,
      required this.month,
      required this.title,
      required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // date box (large number + month)
        Container(
          width: 72,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(day,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800])),
              const SizedBox(height: 4),
              Text(month.toUpperCase(),
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      letterSpacing: 0.6)),
            ],
          ),
        ),

        const SizedBox(width: 16),

        // content
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            if (place.isNotEmpty)
              Text(place,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12)),
          ]),
        ),
      ]),
    );
  }
}
