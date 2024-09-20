import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plant Analysis Results')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Plant Name: Rose', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Health Status: Healthy', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Recommended Actions: Water regularly',
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
