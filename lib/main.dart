import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layout_tugas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // font dan palet warna harmonis
        fontFamily: 'Roboto',
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: const Color(0xFF144A63), // deep blue (appbar)
          onPrimary: Colors.white,
          secondary: const Color(0xFFFFC107), // amber highlight
          onSecondary: Colors.black,
          error: const Color(0xFFD32F2F),
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black87,
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F8FA),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF144A63),
          elevation: 2,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          toolbarTextStyle: const TextStyle(color: Colors.white),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black87),
          bodyMedium:
              TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          titleMedium: TextStyle(fontSize: 13, color: Colors.black87),
        ),
        // tombol utama berwarna amber agar kontras terhadap appbar yang deep-blue
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFC107),
            foregroundColor: Colors.black87,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: const Color(0xFF144A63)),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(
              0xFF5E35B1), // soft purple so it doesn't clash with amber or deep-blue
          elevation: 6,
        ),
        dividerTheme:
            DividerThemeData(color: Colors.grey.shade300, thickness: 1),
        iconTheme: const IconThemeData(color: Colors.black54, size: 20),
      ),
      home: const HomePage(),
    );
  }
}
