import 'package:flutter/material.dart';

void main() {
  runApp(MyLayoutApp());
}

class MyLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Layout Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Tugas Layout Column & Row'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // bio tetap kiri
            children: [
              // HEADER: Foto + Nama
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yakhub Viyan',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        'Mahasiswa Informatika',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),

              // INFO KONTAK
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.green, size: 30),
                      SizedBox(height: 5),
                      Text('Telepon'),
                      Text(
                        '0812-xxxx-xxxx',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.email, color: Colors.red, size: 30),
                      SizedBox(height: 5),
                      Text('Email'),
                      Text(
                        'viyan@email.com',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.location_on, color: Colors.blue, size: 30),
                      SizedBox(height: 5),
                      Text('Alamat'),
                      Text(
                        'Sidoarjo',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 40),

              // FOOTER: Teks + Tombol tetap di tengah
              Center(
                child: Column(
                  children: [
                    Text(
                      '“Belajar Flutter itu seru dan fleksibel!”',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Kamu menekan tombol Like 👍'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      icon: Icon(Icons.thumb_up),
                      label: Text('Like'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        textStyle: TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
