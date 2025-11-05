Folder ini harus berisi gambar dengan nama tepat agar Flutter menemukan asset:
- header.jpg
- news1.jpg
- news2.jpg
- gal1.jpg
- gal2.jpg
- gal3.jpg

Jika file Anda punya nama lain, jalankan skrip dari root project untuk mengganti otomatis:
  PowerShell (run as Administrator jika perlu):
    .\scripts\rename_images.ps1

Setelah itu jalankan:
  flutter clean
  flutter pub get
  flutter run

Atau rename manual file di folder ini sehingga nama persis sama (case-sensitive pada beberapa sistem).
