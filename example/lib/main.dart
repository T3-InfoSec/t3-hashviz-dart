import 'package:flutter/material.dart';
import 'package:hashviz/hashviz.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hashviz integration test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String hash = 'my awesome hash #42';
    Hashviz hashviz = Hashviz(
      // 0xFFFFFFFF White
      // 0x00000000 Transparent
      // 0xFF000000 Black
      // 0xFF00FF00 Green
      // 0xFF0000FF Blue
      // 0xFFFF0000 Red
      // 0xFFFFFF00 Yellow
      // 0xFFFFC0CB Pink
      
      backgroundColor: 0x5FFFFF00, // Yellow
      color: 0xFFFF20FF, // Bright Neon pink
      spotColor: 0xFF00FFFF, // Bright Neon blue
      size: 16,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hashviz demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(20),
              width: 500,
              height: 500,
              child: hashviz.generatePattern(hash),
            ),
          ],
        ),
      ),
    );
  }
}