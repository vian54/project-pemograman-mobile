import 'package:flutter/material.dart';
import '../models/news.dart';
import '../models/event.dart';

// ===== BERITA =====
final List<News> allNews = [
  News(
    id: 'n1',
    title: 'Peluncuran Buku dan Diskusi Akademik "Nusakambangan Luar Dalam"',
    summary: 'Peluncuran Buku dan Diskusi Akademik mengenai sejarah dan budaya pulau Nusakambangan.',
    content: '''Fakultas Sains dan Teknologi UMSIDA menggelar acara peluncuran buku yang membahas tentang sejarah dan budaya Nusakambangan.

Acara ini dihadiri oleh para akademisi dan mahasiswa yang tertarik dengan kajian antropologi dan sejarah Indonesia.

Buku ini menjadi referensi penting untuk memahami dinamika sosial di pulau yang terkenal sebagai pulau penjara tersebut.

Diskusi akademik yang diadakan setelah peluncuran buku membahas berbagai aspek kehidupan di Nusakambangan, mulai dari sistem pengelolaan penjara hingga dampak sosial ekonomi bagi masyarakat sekitar.

Para pembicara dari berbagai universitas menyampaikan pandangan mereka tentang pentingnya memahami sejarah untuk membangun masa depan yang lebih baik.''',
    date: '01 November 2025',
    imageAsset: 'assets/images/news1.jpg',
  ),
  News(
    id: 'n2',
    title: 'Peluncuran Website Program Penelitian "New Futures for Indonesian Objects"',
    summary: 'Website baru untuk program penelitian tentang masa depan objek-objek bersejarah Indonesia.',
    content: '''Program penelitian New Futures for Indonesian Objects telah meluncurkan website resminya sebagai platform informasi dan kolaborasi akademik.

Website ini berisi dokumentasi lengkap tentang benda-benda bersejarah Indonesia dan kajian tentang masa depannya dalam konteks globalisasi dan digitalisasi.

Mahasiswa dan peneliti dapat mengakses berbagai jurnal, paper penelitian, dan database objek bersejarah melalui platform ini.

Platform digital ini juga memfasilitasi kolaborasi internasional dengan museum dan institusi pendidikan di berbagai negara.

Fitur interaktif memungkinkan pengguna untuk berkontribusi dalam dokumentasi dan diskusi tentang pelestarian warisan budaya Indonesia.''',
    date: '24 Oktober 2025',
    imageAsset: 'assets/images/news2.jpg',
  ),
  News(
    id: 'n3',
    title: 'Studi Wawasan "Bahasa dan Ciri Khas Kolonialisme Belanda di Nusantara"',
    summary: 'Penelitian mendalam tentang pengaruh kolonialisme Belanda terhadap bahasa dan budaya Indonesia.',
    content: '''Studi komprehensif tentang pengaruh bahasa Belanda terhadap perkembangan bahasa Indonesia dan struktur sosial masyarakat.

Penelitian ini mengungkap bagaimana kolonialisme membentuk tidak hanya struktur bahasa tetapi juga pola pikir dan sistem budaya lokal yang masih terasa hingga saat ini.

Hasil penelitian dipresentasikan dalam seminar nasional yang dihadiri oleh perwakilan dari berbagai universitas terkemuka di Indonesia.

Tim peneliti menganalisis ribuan dokumen historis dan melakukan wawancara dengan ahli bahasa untuk memahami transformasi linguistik selama periode kolonial.

Temuan penelitian ini diharapkan dapat memberikan perspektif baru dalam memahami identitas nasional Indonesia dan bagaimana masa lalu membentuk masa kini.''',
    date: '20 Oktober 2025',
    imageAsset: 'assets/images/news3.jpg',
  ),
];

// ===== AGENDA ===== (Ubah dari _allAgenda menjadi allEvents)
final List<Event> allEvents = [
  Event(
    id: 'e1',
    title: 'Nusakambangan Luar Dalam: Strategi Pengendalian Sosial',
    day: '27',
    month: 'Okt',
    location: 'Aula FST',
    description: 'Diskusi mendalam tentang strategi pengendalian sosial dan sistem pemasyarakatan di Indonesia dengan narasumber dari berbagai universitas terkemuka.',
  ),
  Event(
    id: 'e2',
    title: 'Consuming the Rijsttafel: Representations of Shared Heritage',
    day: '25',
    month: 'Feb',
    location: 'Gedung Utama',
    description: 'Seminar internasional tentang kuliner dan representasi budaya dalam konteks kolonialisme dan masa kini.',
  ),
  Event(
    id: 'e3',
    title: 'Sejarah Kebijakan Pendidikan Dokter Umum & Spesialis di Indonesia',
    day: '14',
    month: 'Feb',
    location: 'Ruang Seminar',
    description: 'Kajian historis perkembangan pendidikan kedokteran di Indonesia dari masa kolonial hingga era reformasi.',
  ),
  Event(
    id: 'e4',
    title: 'Beyond the Point of No Return: The Re-Emergence of Local Identity',
    day: '13',
    month: 'Feb',
    location: 'Aula Besar',
    description: 'Diskusi tentang kebangkitan kembali identitas budaya lokal di era globalisasi dan digitalisasi.',
  ),
  Event(
    id: 'e5',
    title: 'Workshop: Metodologi Penelitian Kualitatif untuk Ilmu Sosial',
    day: '08',
    month: 'Mar',
    location: 'Lab Komputer',
    description: 'Pelatihan intensif metodologi penelitian kualitatif dengan praktik langsung menggunakan software analisis data.',
  ),
  Event(
    id: 'e6',
    title: 'Seminar Nasional: Digitalisasi Warisan Budaya Indonesia',
    day: '15',
    month: 'Mar',
    location: 'Auditorium',
    description: 'Presentasi dan diskusi tentang upaya digitalisasi dan pelestarian warisan budaya Indonesia melalui teknologi.',
  ),
  Event(
    id: 'e7',
    title: 'Guest Lecture: Antropologi Perkotaan di Era Modern',
    day: '22',
    month: 'Mar',
    location: 'Ruang 301',
    description: 'Kuliah umum dengan pembicara tamu dari Universitas Indonesia tentang dinamika kehidupan perkotaan.',
  ),
  Event(
    id: 'e8',
    title: 'Fieldwork Training: Teknik Observasi Partisipan',
    day: '05',
    month: 'Apr',
    location: 'Kampung Adat',
    description: 'Pelatihan lapangan teknik observasi partisipan untuk mahasiswa antropologi dan sosiologi.',
  ),
  Event(
    id: 'e9',
    title: 'Konferensi Internasional: Heritage Studies 2025',
    day: '20',
    month: 'Apr',
    location: 'Grand Hotel',
    description: 'Konferensi internasional dengan tema pelestarian dan kajian warisan budaya dari perspektif interdisipliner.',
  ),
  Event(
    id: 'e10',
    title: 'Panel Discussion: Etnografi Digital dan Media Sosial',
    day: '10',
    month: 'Mei',
    location: 'Aula FST',
    description: 'Diskusi panel tentang metodologi etnografi digital dalam penelitian perilaku di media sosial.',
  ),
];

// ===== MODEL CLASS untuk Academic Info =====
class AcademicInfo {
  final String id;
  final String title;
  final String date;
  final String category;
  final String description;
  final IconData icon;

  AcademicInfo({
    required this.id,
    required this.title,
    required this.date,
    required this.category,
    required this.description,
    required this.icon,
  });
}

// ===== INFORMASI AKADEMIK ===== (Ubah dari _allInfo menjadi allInfo)
final List<AcademicInfo> allInfo = [
  AcademicInfo(
    id: '1',
    title: 'Pendaftaran Yudisium S1 Mulai November 2025',
    date: 'Oktober 16, 2025',
    category: 'Administrasi',
    description: 'Pendaftaran yudisium untuk mahasiswa S1 angkatan 2021 akan dibuka mulai 1 November 2025. Persyaratan lengkap dapat diunduh di website.',
    icon: Icons.school,
  ),
  AcademicInfo(
    id: '2',
    title: 'Jadwal Kuliah Program Magister TA 2025/2026',
    date: 'Oktober 16, 2025',
    category: 'Perkuliahan',
    description: 'Jadwal perkuliahan untuk program magister telah tersedia. Mahasiswa dapat mengakses melalui portal akademik.',
    icon: Icons.calendar_today,
  ),
  AcademicInfo(
    id: '3',
    title: 'Ralat Pengumuman Pendaftaran Ulang Mahasiswa Semester Gasal T.A. 2025/2026',
    date: 'Oktober 16, 2025',
    category: 'Administrasi',
    description: 'Terdapat perubahan jadwal pendaftaran ulang. Batas akhir pendaftaran diperpanjang hingga 30 Oktober 2025.',
    icon: Icons.update,
  ),
  AcademicInfo(
    id: '4',
    title: 'Tradisi Brandu dalam Kacamata Antropologi Kesehatan',
    date: 'Oktober 16, 2025',
    category: 'Penelitian',
    description: 'Publikasi hasil penelitian tentang tradisi Brandu dari perspektif antropologi kesehatan telah tersedia di perpustakaan.',
    icon: Icons.book,
  ),
  AcademicInfo(
    id: '5',
    title: 'Jejak Keilmuan dan Kebudayaan yang Menginspirasi',
    date: 'Oktober 16, 2025',
    category: 'Penelitian',
    description: 'Dokumentasi perjalanan keilmuan dan kebudayaan fakultas dari tahun ke tahun sebagai inspirasi generasi mendatang.',
    icon: Icons.history_edu,
  ),
  AcademicInfo(
    id: '6',
    title: 'Pembukaan Program Beasiswa Riset 2025',
    date: 'Oktober 10, 2025',
    category: 'Beasiswa',
    description: 'Beasiswa riset untuk mahasiswa S1 dan S2 dengan fokus pada kajian budaya dan masyarakat. Pendaftaran dibuka hingga 30 November 2025.',
    icon: Icons.money,
  ),
  AcademicInfo(
    id: '7',
    title: 'Workshop Penulisan Proposal Tesis',
    date: 'Oktober 08, 2025',
    category: 'Perkuliahan',
    description: 'Workshop intensif penulisan proposal tesis untuk mahasiswa magister. Wajib diikuti oleh mahasiswa semester 3.',
    icon: Icons.edit_document,
  ),
  AcademicInfo(
    id: '8',
    title: 'Pengumuman Hasil Seleksi Asisten Dosen',
    date: 'Oktober 05, 2025',
    category: 'Administrasi',
    description: 'Pengumuman hasil seleksi asisten dosen untuk mata kuliah Metode Penelitian dan Antropologi Budaya.',
    icon: Icons.people,
  ),
  AcademicInfo(
    id: '9',
    title: 'Call for Papers: Jurnal Antropologi UMSIDA Vol. 12',
    date: 'September 28, 2025',
    category: 'Penelitian',
    description: 'Jurnal Antropologi UMSIDA menerima artikel ilmiah untuk edisi Vol. 12. Deadline pengiriman: 15 Desember 2025.',
    icon: Icons.article,
  ),
  AcademicInfo(
    id: '10',
    title: 'Perubahan Jadwal Ujian Akhir Semester',
    date: 'September 25, 2025',
    category: 'Perkuliahan',
    description: 'Terdapat perubahan jadwal UAS untuk beberapa mata kuliah. Cek jadwal terbaru di portal akademik.',
    icon: Icons.schedule,
  ),
  AcademicInfo(
    id: '11',
    title: 'Program Magang Internasional 2026',
    date: 'September 20, 2025',
    category: 'Beasiswa',
    description: 'Dibuka program magang ke universitas mitra di Belanda dan Malaysia untuk mahasiswa berprestasi.',
    icon: Icons.flight_takeoff,
  ),
  AcademicInfo(
    id: '12',
    title: 'Perpanjangan Masa Studi Mahasiswa',
    date: 'September 15, 2025',
    category: 'Administrasi',
    description: 'Informasi dan prosedur perpanjangan masa studi bagi mahasiswa yang membutuhkan.',
    icon: Icons.access_time,
  ),
];

// ===== Data untuk home_page (format Map) =====
final List<Map<String, String>> academicInfo = [
  {
    'title': 'Pendaftaran Yudisium S1 Mulai November 2025',
    'date': 'Oktober 16, 2025',
  },
  {
    'title': 'Jadwal Kuliah Program Magister TA 2025/2026',
    'date': 'Oktober 16, 2025',
  },
  {
    'title': 'Ralat Pengumuman Pendaftaran Ulang Mahasiswa Semester Gasal',
    'date': 'Oktober 16, 2025',
  },
];