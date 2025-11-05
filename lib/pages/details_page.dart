import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final String date;
  final String content;
  final String imageAsset;

  const DetailsPage({
    super.key,
    required this.title,
    required this.date,
    required this.content,
    required this.imageAsset,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  late final Animation<Offset> _slide;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _slide = Tween<Offset>(begin: const Offset(0, 0.04), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _animController, curve: Curves.easeOut));
    _fade = CurvedAnimation(parent: _animController, curve: Curves.easeIn);
    Future.delayed(
        const Duration(milliseconds: 160), () => _animController.forward());
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  Widget _assetImage(String path, {double? height, BoxFit fit = BoxFit.cover}) {
    return Image.asset(
      path,
      width: double.infinity,
      height: height,
      fit: fit,
      errorBuilder: (_, __, ___) =>
          Container(height: height, color: Colors.grey[300]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Example author & tags (adjust if you pass real data)
    const author = 'Admin FST';
    final tags = ['Kegiatan', 'Workshop', 'UMSIDA'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Berita'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              // keep AppBar transparent so header image shows behind if extended
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header image with dark gradient overlay
            Stack(
              children: [
                SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: _assetImage(widget.imageAsset,
                      height: 260, fit: BoxFit.cover),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.45),
                          Colors.transparent
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 18,
                  right: 20,
                  child: SlideTransition(
                    position: _slide,
                    child: FadeTransition(
                      opacity: _fade,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Row(children: [
                            Text(widget.date,
                                style: const TextStyle(
                                    color: Colors.white70, fontSize: 12)),
                            const SizedBox(width: 12),
                            const Icon(Icons.person,
                                size: 14, color: Colors.white70),
                            const SizedBox(width: 6),
                            Text(author,
                                style: const TextStyle(
                                    color: Colors.white70, fontSize: 12)),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // content area
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // tags + share row
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          children: tags
                              .map((t) => Chip(
                                  label: Text(t),
                                  backgroundColor: Colors.grey[100]))
                              .toList(),
                        ),
                      ),
                      Row(children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.share)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border)),
                      ])
                    ],
                  ),
                  const SizedBox(height: 8),

                  // article content (split paragraphs from content by double newlines if present)
                  SlideTransition(
                    position: _slide,
                    child: FadeTransition(
                      opacity: _fade,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // optional lead paragraph style
                          Text(
                            _leadParagraph(widget.content),
                            style: const TextStyle(
                                fontSize: 16,
                                height: 1.6,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 12),

                          // remainder paragraphs
                          ..._bodyParagraphs(widget.content).map((p) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Text(p,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        height: 1.6,
                                        color: Colors.black87)),
                              )),
                          const SizedBox(height: 12),

                          // inline image example (use same image or change)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(widget.imageAsset,
                                width: double.infinity,
                                height: 180,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(
                                    height: 180, color: Colors.grey[200])),
                          ),
                          const SizedBox(height: 14),

                          // extra note or CTA
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade50,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                                'Catatan: Untuk informasi lebih lanjut hubungi Sekretariat FST.',
                                style: TextStyle(fontSize: 13)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),
                  const Divider(),

                  // related posts horizontal
                  const SizedBox(height: 12),
                  const Text('Related Berita',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(3, (i) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: SizedBox(
                            width: 260,
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: InkWell(
                                onTap: () {
                                  // open dummy related detail (reopen same page for demo)
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => DetailsPage(
                                          title: widget.title,
                                          date: widget.date,
                                          content: widget.content,
                                          imageAsset: widget.imageAsset)));
                                },
                                child: Row(children: [
                                  ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8)),
                                      child: Image.asset(widget.imageAsset,
                                          width: 100,
                                          height: 120,
                                          fit: BoxFit.cover,
                                          errorBuilder: (_, __, ___) =>
                                              Container(
                                                  width: 100,
                                                  height: 120,
                                                  color: Colors.grey[200]))),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(widget.title,
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                maxLines: 2,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                            const SizedBox(height: 6),
                                            Text(widget.date,
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black54)),
                                          ]),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 28),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // helper to extract lead and body paragraphs
  String _leadParagraph(String raw) {
    final parts = raw.split('\n\n');
    return parts.isNotEmpty ? parts.first : raw;
  }

  List<String> _bodyParagraphs(String raw) {
    final parts = raw.split('\n\n');
    if (parts.length <= 1) return [];
    return parts.sublist(1);
  }
}
