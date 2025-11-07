import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});
  
  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<Offset> _slide;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeIn);
    Future.delayed(
      const Duration(milliseconds: 300),
      () => _ctrl.forward(),
    );
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const mascot = 'assets/images/gal1.jpg';
    
    return Column(
      children: [
        SlideTransition(
          position: _slide,
          child: FadeTransition(
            opacity: _fade,
            child: Container(
              color: const Color(0xFF144A63),
              padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 48),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left: Logo & Address
                  SizedBox(
                    width: 260,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              mascot,
                              width: 200,
                              height: 200,
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) => const Icon(
                                Icons.account_circle,
                                size: 60,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'UMSIDA\nFakultas Sains dan Teknologi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Kampus 2 Universitas Muhammadiyah Sidoarjo\nJl. Raya Gelam No.250, Pagerwaja, Gelam, Kec. Candi',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  // Middle: Direktorat
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Direktorat',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 12),
                        _FooterLink(label: 'Akademik'),
                        _FooterLink(label: 'Keuangan'),
                        _FooterLink(label: 'Kemahasiswaan dan Alumni'),
                        _FooterLink(label: 'Pengembangan SDM'),
                      ],
                    ),
                  ),
                  // Right: Badan dan Lembaga
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Badan dan Lembaga',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 12),
                        _FooterLink(label: 'Badan Penjamin Mutu'),
                        _FooterLink(label: 'Lembaga Kerjasama dan Urusan Internasional'),
                        _FooterLink(label: 'Lembaga Bahasa'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Bottom copyright bar
        SafeArea(
          top: false,
          child: Container(
            width: double.infinity,
            color: const Color(0xFF144A63),
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24)
                .copyWith(right: 100),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    '© 2024 Fakultas Sains dan Teknologi. Universitas Muhammadiyah Sidoarjo. All Rights Reserved',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                  color: Colors.white,
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  tooltip: 'Facebook',
                ),
                const SizedBox(width: 6),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  color: Colors.white,
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  tooltip: 'Share',
                ),
                const SizedBox(width: 6),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mail_outline),
                  color: Colors.white,
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  tooltip: 'Contact',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String label;
  
  const _FooterLink({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.white70,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 4),
      ),
      child: Text(label),
    );
  }
}