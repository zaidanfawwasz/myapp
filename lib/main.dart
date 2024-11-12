import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
      ),
      home: const AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/Users/zaidanfawwasz/Documents/Collagee/myapp/assets/background.jpg'), // Replace with your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85), // Semi-transparent white background
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Profile Picture
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('/Users/zaidanfawwasz/Documents/Collagee/myapp/assets/profile.jpg'),
                  ),
                  const SizedBox(height: 20),
                  
                  // Full Name
                  const Text(
                    'Muhammad Zaidan Hafsh Fawwaz',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  
                  // NRP
                  const Text(
                    'NRP: 5026221215',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Fun Fact
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Fun Fact: saat ngerjain tugas ini belum tidur 2 hari!',
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Projects List
                  const Text(
                    'Projects:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // List of projects
                  Expanded(
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.grey),
                          title: Text('Aufa Project - 1M followers on TikTok'),
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.grey),
                          title: Text('Content Planning for DxDental - Awdella'),
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.grey),
                          title: Text('TEDx First’s Brand Ambassador Video'),
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.grey),
                          title: Text('Pak Tukang Company Profile Video'),
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.grey),
                          title: Text('After Movie WISUDA ITS 126'),
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.grey),
                          title: Text('Music Video for "Sementara" by Adib'),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // About Me Section
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'About Me\n\nHello, my name is Zaidan Fawwasz, currently residing in Surabaya and pursuing my education at the Sepuluh Nopember Institute of Technology. I have a strong interest in the creative industry. For the past four years, I have been involved in filming, broadcasting, creative design, and branding marketing.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Extra Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Ayo Kenalan!')),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                        'Klik Ini!',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

