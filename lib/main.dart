import 'package:flutter/material.dart';

void main() {
  runApp(MyLayoutApp());
}

class MyLayoutApp extends StatelessWidget {
  const MyLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Layout Column & Row',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Desain Layout Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          color: Colors.grey[200],
          child: Column(
            children: [
              // Bagian Header (foto + nama)
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Yakhub Viyan',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Mahasiswa Informatika',
                          style: TextStyle(color: Colors.grey[700])),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Bagian Info (Row di dalam Column)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.green),
                      Text('Telepon'),
                      Text('0812-xxxx-xxxx'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.email, color: Colors.red),
                      Text('Email'),
                      Text('viyan@email.com'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.location_on, color: Colors.blue),
                      Text('Alamat'),
                      Text('Surabaya'),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Bagian Footer (teks di tengah)
              Column(
                children: [
                  Text('“Belajar Flutter itu seru!”',
                      style:
                          TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
