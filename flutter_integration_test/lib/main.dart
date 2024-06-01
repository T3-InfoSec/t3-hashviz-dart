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
    String hash = 'my awesome #42 hash';
    Hashviz hashviz = Hashviz(
      //backgroundColor: 0xFFFFFFFF,
      //color: 0x00000000,
      spotColor: 0xFF00FFFF, // Bright Neon blue
      size: 12,
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