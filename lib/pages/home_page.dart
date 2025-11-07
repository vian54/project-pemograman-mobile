import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/news_item.dart';
import '../widgets/agenda_item.dart';
import '../widgets/footer.dart';
import 'agenda_page.dart';
import 'academic_info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() => setState(() => _counter++);

  // Asset paths
  static const galleryAsset1 = 'assets/images/gal1.jpg';
  static const galleryAsset2 = 'assets/images/gal2.jpg';
  static const galleryAsset3 = 'assets/images/gal3.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(96),
        child: Container(
          color: const Color(0xFF0D3E57),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo + Text
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 88,
                        height: 88,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 12, top: 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            galleryAsset1,
                            width: 72,
                            height: 72,
                            fit: BoxFit.contain,
                            errorBuilder: (_, __, ___) => Container(
                              width: 80,
                              height: 80,
                              color: Colors.white24,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'INFORMATIKA',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'FAKULTAS SAINS DAN TEKNOLOGI',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'UNIVERSITAS MUHAMMADIYAH SIDOARJO',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Menu
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'BERANDA',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                height: 3,
                                width: 56,
                                color: const Color(0xFFFFC107),
                              ),
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
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Three-column area
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 28),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isWide = constraints.maxWidth > 1000;
                  
                  if (isWide) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(flex: 4, child: _buildNewsSection()),
                        const SizedBox(width: 32),
                        Expanded(flex: 3, child: _buildAgendaSection()),
                        const SizedBox(width: 32),
                        Expanded(flex: 3, child: _buildAcademicSection()),
                      ],
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildNewsSection(),
                        const SizedBox(height: 20),
                        _buildAgendaSection(),
                        const SizedBox(height: 20),
                        _buildAcademicSection(),
                      ],
                    );
                  }
                },
              ),
            ),
            // Gallery
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Galeri',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _GalleryItem(asset: galleryAsset1, width: 300),
                        const SizedBox(width: 12),
                        _GalleryItem(asset: galleryAsset2, width: 260),
                        const SizedBox(width: 12),
                        _GalleryItem(asset: galleryAsset3, width: 260),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
            const Footer(),
            // Hidden counter for testing
            Offstage(child: Text('$_counter')),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: const [
            Text(
              'Berita',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
            Expanded(child: Divider(thickness: 1)),
          ],
        ),
        const SizedBox(height: 12),
        // News items from dummy_data
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: allNews.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) => NewsItem(news: allNews[index]),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {
            // Nanti bisa dibuat halaman news list lengkap
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Halaman daftar berita akan segera tersedia'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: const Text('Lihat Semua Berita'),
        ),
      ],
    );
  }

  Widget _buildAgendaSection() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [
              Text(
                'Agenda',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Expanded(child: Divider(thickness: 1)),
            ],
          ),
          const SizedBox(height: 12),
          // Agenda items from dummy_data
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: allEvents.length,
            itemBuilder: (context, index) => AgendaItem(event: allEvents[index]),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const AgendaPage()),
              );
            },
            child: const Text('Lihat Semua Agenda'),
          ),
        ],
      ),
    );
  }

  Widget _buildAcademicSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: const [
            Text(
              'Informasi Akademik',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
            Expanded(child: Divider(thickness: 1)),
          ],
        ),
        const SizedBox(height: 12),
        // Academic info from dummy_data
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: academicInfo.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) {
            final info = academicInfo[index];
            return ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                info['title']!,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.2,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  info['date']!,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              dense: true,
            );
          },
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const AcademicInfoPage()),
            );
          },
          child: const Text('Lihat Semua Informasi'),
        ),
      ],
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
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        if (hasDropdown)
          const Icon(Icons.arrow_drop_down, color: Colors.white, size: 18),
      ],
    );
  }
}

class _GalleryItem extends StatelessWidget {
  final String asset;
  final double width;
  
  const _GalleryItem({required this.asset, required this.width});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        asset,
        width: width,
        height: 130,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          width: width,
          height: 130,
          color: Colors.grey[200],
        ),
      ),
    );
  }
}