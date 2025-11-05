import '../models/news.dart';
import '../models/event_item.dart';

final List<News> sampleNews = [
  News(
    id: 'n1',
    title: 'Berbagi Sehat + Semangat: Dukungan bagi Mahasiswa',
    summary: 'Kegiatan bakti sosial dan konseling bagi mahasiswa asrama.',
    content: 'Isi lengkap berita 1...',
    date: '25 Okt 2025',
    imageUrl: 'https://images.unsplash.com/photo-1532614338840-ab30cf10ed2b?auto=format&fit=crop&w=800&q=60',
  ),
  News(
    id: 'n2',
    title: 'FST UMSIDA Gelar Workshop IoT',
    summary: 'Workshop pengembangan IoT untuk mahasiswa.',
    content: 'Isi lengkap berita 2...',
    date: '10 Okt 2025',
    imageUrl: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=60',
  ),
];

final List<EventItem> sampleEvents = [
  EventItem(
    id: 'e1',
    title: 'Seminar Data Science 2025',
    date: '25 Nov 2025',
    location: 'Aula FST',
    description: 'Seminar nasional menghadirkan pembicara dari industri.',
  ),
  EventItem(
    id: 'e2',
    title: 'Workshop Android Dev',
    date: '10 Nov 2025',
    location: 'Lab Mobile',
    description: 'Workshop sehari membangun aplikasi Android.',
  ),
];
