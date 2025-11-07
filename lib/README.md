Struktur folder lib (sederhana dan jelas):

- lib/
  - main.dart                     -> titik masuk aplikasi
  - ui.dart                       -> barrel tunggal (export pages + widgets)
  - README.md                     -> file ini
  - pages/
    - pages.dart                  -> export halaman
    - home_page.dart
    - details_page.dart
    - agenda_page.dart
  - widgets/
    - widgets.dart                -> export widget
    - news_item.dart
    - agenda_item.dart
    - footer.dart
  - assets/ (gambar yang direferensikan ada di pubspec.yaml)

Panduan singkat:
- Untuk menggunakan halaman/widget cukup import satu baris:
  import 'package:layout_tugas/ui.dart';
- Nama file: snake_case.dart, kelas: PascalCase.
- Satu widget/kelas per file.
- Setelah perubahan: flutter clean && flutter pub get && flutter run
