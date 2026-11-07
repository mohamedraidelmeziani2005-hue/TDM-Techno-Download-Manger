import 'package:flutter/material.dart';

void main() {
  runApp(const TechnoDownloadManagerApp());
}

class TechnoDownloadManagerApp extends StatelessWidget {
  const TechnoDownloadManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Techno Download Manger',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2563EB)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Techno Download Manger')),
        body: const Center(child: Text('Project foundation')),
      ),
    );
  }
}
