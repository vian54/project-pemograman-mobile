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

// ===== AGENDA =====
final List<Event> allEvents = [
  Event(
    id: 'e1',
    title: 'Nusakambangan Luar Dalam: Strategi pengendalian...',
    day: '27',
    month: 'Okt',
    location: 'Aula FST',
    description: 'Diskusi mendalam tentang strategi pengendalian sosial dan sistem pemasyarakatan di Indonesia',
  ),
  Event(
    id: 'e2',
    title: 'Consuming the Rijsttafel: Representations of Shared...',
    day: '25',
    month: 'Feb',
    location: 'Gedung Utama',
    description: 'Seminar tentang kuliner dan representasi budaya dalam konteks kolonialisme',
  ),
  Event(
    id: 'e3',
    title: 'Sejarah Kebijakan Pendidikan Dokter Umum & Spesialis...',
    day: '14',
    month: 'Feb',
    location: 'Ruang Seminar',
    description: 'Kajian historis perkembangan pendidikan kedokteran di Indonesia',
  ),
  Event(
    id: 'e4',
    title: 'Beyond the Point of No Return: The Re-Emergence...',
    day: '13',
    month: 'Feb',
    location: 'Aula Besar',
    description: 'Diskusi tentang kebangkitan kembali identitas budaya lokal di era globalisasi',
  ),
];

// ===== INFORMASI AKADEMIK =====
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
    'title': 'Ralat Pengumuman Pendaftaran Ulang Mahasiswa Semester Gasal T.A. 2025/2026',
    'date': 'Oktober 16, 2025',
  },
  {
    'title': 'Tradisi Brandu dalam Kacamata Antropologi Kesehatan',
    'date': 'Oktober 16, 2025',
  },
  {
    'title': 'Jejak Keilmuan dan Kebudayaan yang Menginspirasi',
    'date': 'Oktober 16, 2025',
  },
];