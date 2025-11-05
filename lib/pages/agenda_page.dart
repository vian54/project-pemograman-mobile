import 'package:flutter/material.dart';
import '../widgets/agenda_item.dart';
import '../widgets/footer.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // contoh data acara langsung di sini (sesuaikan jika mau load dari sumber lain)
    final events = [
      {
        'day': '25',
        'month': 'Nov',
        'title': 'Seminar Data Science 2025',
        'place': 'Aula FST'
      },
      {
        'day': '10',
        'month': 'Nov',
        'title': 'Workshop Pengembangan Android',
        'place': 'Aula FST'
      },
      {
        'day': '05',
        'month': 'Nov',
        'title': 'Kuliah Umum FST UMSIDA',
        'place': 'Aula FST'
      },
      {
        'day': '01',
        'month': 'Nov',
        'title': 'Webinar Big Data',
        'place': 'Aula FST'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003366),
        title: const Text('Agenda Fakultas'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Agenda Kegiatan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...events.map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: AgendaItem(
                      day: e['day']!,
                      month: e['month']!,
                      title: e['title']!,
                      place: e['place']!),
                )),
            const SizedBox(height: 28),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
