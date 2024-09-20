import 'dart:io';

import 'package:flutter/material.dart';
import 'result_page.dart';

class UploadPage extends StatelessWidget {
  final String imagePath;

  const UploadPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Uploading Image')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.file(File(imagePath)),
            const SizedBox(height: 20),
            const Text('Uploading...'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(),
                  ),
                );
              },
              child: const Text('View Results'),
            ),
          ],
        ),
      ),
    );
  }
}
