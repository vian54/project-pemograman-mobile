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
        vsync: this, duration: const Duration(milliseconds: 700));
    _slide = Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero)
        .animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeIn);
    // delay to let page render then animate
    Future.delayed(const Duration(milliseconds: 300), () => _ctrl.forward());
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // sample mascot image in assets (use one you added) or fallback icon
    const mascot = 'assets/images/gal1.jpg';
    return Column(children: [
      SlideTransition(
        position: _slide,
        child: FadeTransition(
          opacity: _fade,
          child: Container(
            color: Colors.grey[100],
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 48),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // left: mascot + basic address
              SizedBox(
                width: 260,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(mascot,
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => const Icon(
                                  Icons.account_circle,
                                  size: 120,
                                  color: Colors.blue))),
                      const SizedBox(height: 12),
                      const Text('UMSIDA\nFakultas Sains dan Teknologi',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      const Text(
                          'Kampus 2 Universitas Muhammadiyah Sidoarjo\nJl. Raya Gelam No.250, Pagerwaja, Gelam, Kec. Candi',
                          style: TextStyle(fontSize: 12)),
                    ]),
              ),

              const SizedBox(width: 40),

              // middle: Direktorat
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Direktorat',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 12),
                      TextButton(
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Akademik'))),
                      TextButton(
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Keuangan'))),
                      TextButton(
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Kemahasiswaan dan Alumni'))),
                      TextButton(
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Pengembangan SDM'))),
                    ]),
              ),

              // right: Badan dan Lembaga
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Badan dan Lembaga',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 12),
                      TextButton(
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Badan Penjamin Mutu'))),
                      TextButton(
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  'Lembaga Kerjasama dan Urusan Internasional'))),
                      TextButton(
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Lembaga Bahasa'))),
                    ]),
              ),
            ]),
          ),
        ),
      ),

      // bottom copyright bar
      Container(
        width: double.infinity,
        color: Colors.indigo,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 48),
        child: Row(children: [
          const Expanded(
              child: Text(
                  '© 2024 Fakultas Sains dan Teknologi. Universitas Muhammadiyah Sidoarjo. All Rights Reserved',
                  style: TextStyle(color: Colors.white))),
          // small social icons placeholder
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt, color: Colors.white)),
        ]),
      ),
    ]);
  }
}
