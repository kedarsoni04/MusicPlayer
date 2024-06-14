import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const _SimpleExampleApp());
}

class _SimpleExampleApp extends StatelessWidget {
  const _SimpleExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  var mysong = "audio/mysong.mp3";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.network(
                "https://c.saavncdn.com/844/Teri-Baaton-Mein-Aisa-Uljha-Jiya-Title-Song-From-Teri-Baaton-Mein-Aisa-Uljha-Jiya-Hindi-2024-20240130171002-500x500.jpg",
                height: 300,
                width: 300,
              ),
            ),
            Container(height: 30),
            ElevatedButton(
                onPressed: () async {
                  await player.play(AssetSource(mysong));
                  print("play");
                },
                child: const Text("Tap to Play Music")),
          ],
        ),
      ),
    );
  }
}
