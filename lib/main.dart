import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static Resources App',
      theme: ThemeData(
      fontFamily: 'IndieFlower', 
      textTheme: const TextTheme(
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 18),
  ),
),

      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'Фоточки обезьянок',
    style: TextStyle(
      fontSize: 26, 
      fontWeight: FontWeight.bold,
    ),
  ),
  centerTitle: true,
),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
  '🐵Велкоммм🐵!',
  style: TextStyle(fontSize: 24), 
),

            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Image.asset('assets/images/image1.png'),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/image2.png'),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/image3.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
