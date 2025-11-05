import 'package:flutter/material.dart';
import '../widgets/news_item.dart';
import '../widgets/agenda_item.dart';
import '../widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() => setState(() => _counter++);

  // asset paths (ensure files exist in assets/images/)
  static const headerAsset = 'assets/images/header.jpg';
  static const newsAsset1 = 'assets/images/news1.jpg';
  static const newsAsset2 = 'assets/images/news2.jpg';
  static const newsAsset3 = 'assets/images/news3.jpg';
  static const galleryAsset1 = 'assets/images/gal1.jpg';
  static const galleryAsset2 = 'assets/images/gal2.jpg';
  static const galleryAsset3 = 'assets/images/gal3.jpg';

  @override
  Widget build(BuildContext context) {
    // sample data for "Informasi Akademik"
    final academicInfo = [
      'Pendaftaran Yudisium S1 Mulai November 2025',
      'Jadwal Kuliah Program Magister TA 2025/2026',
      'Ralat Pengumuman Pendaftaran Ulang Mahasiswa Semester Gasal T.A. 2025/2026',
      'Tradisi Brandu dalam Kacamata Antropologi Kesehatan',
      'Jejak Keilmuan dan Kebudayaan yang Menginspirasi',
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      // custom header to match provided screenshot: dark bar, logo + multiline text at left, menu at right
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(96),
        child: Container(
          color: const Color(0xFF0D3E57), // dark blue similar to screenshot
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // logo + text block on left
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          galleryAsset1,
                          width: 64,
                          height: 64,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                              width: 64, height: 64, color: Colors.white24),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('DEPARTEMEN SEJARAH',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text('FAKULTAS ILMU BUDAYA',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12)),
                          Text('UNIVERSITAS GADJAH MADA',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  // menu (scrollable horizontally if viewport small)
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // BERANDA with underline
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text('BERANDA',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                  height: 3,
                                  width: 56,
                                  color: const Color(
                                      0xFFFFC107)), // yellow underline
                            ],
                          ),
                          const SizedBox(width: 12),
                          _NavItem(label: 'TENTANG'),
                          const SizedBox(width: 12),
                          _NavItem(label: 'AKADEMIK', hasDropdown: true),
                          const SizedBox(width: 12),
                          _NavItem(label: 'KABAR', hasDropdown: true),
                          const SizedBox(width: 12),
                          _NavItem(label: 'RISET', hasDropdown: true),
                          const SizedBox(width: 12),
                          _NavItem(label: 'PUBLIKASI', hasDropdown: true),
                          const SizedBox(width: 12),
                          _NavItem(label: 'MAHASISWA', hasDropdown: true),
                          const SizedBox(width: 12),
                          _NavItem(label: 'ALUMNI', hasDropdown: true),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: const Color(0xFF2E3B55),
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // header: removed image/gradient background — keep blank/transparent block to preserve spacing
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.transparent,
          ),

          // three-column area
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 28),
            child: LayoutBuilder(builder: (context, constraints) {
              final isWide = constraints.maxWidth > 1000;
              return Flex(
                direction: isWide ? Axis.horizontal : Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left: Berita (takes ~40%)
                  Expanded(
                    flex: 4,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text('Berita',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(width: 8),
                            Expanded(child: Divider(thickness: 1)),
                          ]),
                          const SizedBox(height: 12),
                          // multiple NewsItem with divider between
                          NewsItem(
                            imageAsset: newsAsset1,
                            title:
                                'Peluncuran Buku dan Diskusi Akademik "Nusakambangan Luar Dalam"',
                            date: '01 November 2025',
                            excerpt:
                                'Peluncuran Buku dan Diskusi Akademik mengenai ...',
                            fullContent: 'Isi lengkap berita 1 ...',
                          ),
                          const Divider(),
                          NewsItem(
                            imageAsset: newsAsset2,
                            title:
                                'Peluncuran Website Program Penelitian "New Futures for Indonesian Objects"',
                            date: '24 Oktober 2025',
                            excerpt:
                                'Website baru untuk program penelitian ...',
                            fullContent: 'Isi lengkap berita 2 ...',
                          ),
                          const Divider(),
                          NewsItem(
                            imageAsset: newsAsset3,
                            title:
                                'Studi Wawasan "Bahasa dan Ciri Khas Kolonialisme Belanda di Nusantara"',
                            date: '20 Oktober 2025',
                            excerpt: 'Ringkasan studi wawasan ...',
                            fullContent: 'Isi lengkap berita 3 ...',
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Lihat Semua Berita'))
                        ]),
                  ),

                  SizedBox(width: isWide ? 32 : 0, height: isWide ? 0 : 20),

                  // Middle: Agenda (takes ~30%)
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: const [
                              Text('Agenda',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(width: 8),
                              Expanded(child: Divider(thickness: 1)),
                            ]),
                            const SizedBox(height: 12),
                            // sample agenda items
                            AgendaItem(
                                day: '27',
                                month: 'Okt',
                                title:
                                    'Nusakambangan Luar Dalam: Strategi pengendalian...',
                                place: ''),
                            AgendaItem(
                                day: '25',
                                month: 'Feb',
                                title:
                                    'Consuming the Rijsttafel: Representations of Shared...',
                                place: ''),
                            AgendaItem(
                                day: '14',
                                month: 'Feb',
                                title:
                                    'Sejarah Kebijakan Pendidikan Dokter Umum & Spesialis...',
                                place: ''),
                            AgendaItem(
                                day: '13',
                                month: 'Feb',
                                title:
                                    'Beyond the Point of No Return: The Re-Emergence...',
                                place: ''),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Lihat Semua Agenda'))
                          ]),
                    ),
                  ),

                  SizedBox(width: isWide ? 32 : 0, height: isWide ? 0 : 20),

                  // Right: Informasi Akademik (takes ~30%)
                  Expanded(
                    flex: 3,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text('Informasi Akademik',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(width: 8),
                            Expanded(child: Divider(thickness: 1)),
                          ]),
                          const SizedBox(height: 12),
                          // list of academic info
                          ...academicInfo.map((s) => Column(children: [
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(s,
                                      style: const TextStyle(
                                          fontSize: 14, height: 1.2)),
                                  subtitle: Text('Oktober 16, 2025',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey[600])),
                                  dense: true,
                                  horizontalTitleGap: 8,
                                  minVerticalPadding: 8,
                                ),
                                const Divider(),
                              ])),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Lihat Semua Informasi'))
                        ]),
                  ),
                ],
              );
            }),
          ),

          // Gallery + footer etc (existing)
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Galeri',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(galleryAsset1,
                            width: 300,
                            height: 120,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                                width: 300,
                                height: 120,
                                color: Colors.grey[200]))),
                    const SizedBox(width: 12),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(galleryAsset2,
                            width: 300,
                            height: 120,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                                width: 300,
                                height: 120,
                                color: Colors.grey[200]))),
                    const SizedBox(width: 12),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(galleryAsset3,
                            width: 300,
                            height: 120,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                                width: 300,
                                height: 120,
                                color: Colors.grey[200]))),
                  ],
                ),
              ),
              const SizedBox(height: 32),
            ]),
          ),

          const Footer(),

          // hidden counter for widget_test
          Offstage(child: Text('$_counter')),
        ]),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final bool hasDropdown;
  const _NavItem({required this.label, this.hasDropdown = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(label, style: const TextStyle(color: Colors.white)),
        ),
        if (hasDropdown)
          const Icon(Icons.arrow_drop_down, color: Colors.white, size: 18),
      ],
    );
  }
}
