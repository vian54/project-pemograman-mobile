import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/agenda_item.dart';
import '../widgets/footer.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Text(
              'Agenda Kegiatan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            // Use events from dummy_data
            ...allEvents.map((event) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: AgendaItem(event: event),
            )),
            const SizedBox(height: 28),
            const Footer(),
          ],
        ),
      ),
    );
  }
}