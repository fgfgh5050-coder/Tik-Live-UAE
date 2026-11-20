
import 'package:flutter/material.dart';

void main() {
  runApp(const TikLiveUAE());
}

class TikLiveUAE extends StatelessWidget {
  const TikLiveUAE({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tik Live UAE',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF100B0D),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF791C35),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF241017),
          title: const Text(
            '🇦🇪 Tik Live UAE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            const Text(
              'استوديو البث المباشر',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            Container(
              height: 190,
              decoration: BoxDecoration(
                color: const Color(0xFF30141F),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.white24),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.videocam, size: 55),
                  SizedBox(height: 12),
                  Text('منطقة معاينة البث'),
                  SizedBox(height: 8),
                  Text('Tik Live UAE'),
                ],
              ),
            ),
            const SizedBox(height: 22),
            const Text(
              'أدوات البث',
              style: TextStyle(fontSize: 21),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                ToolCard(Icons.comment, 'التعليقات'),
                ToolCard(Icons.card_giftcard, 'الهدايا'),
                ToolCard(Icons.people, 'المتابعون'),
                ToolCard(Icons.volume_up, 'قراءة الصوت'),
                ToolCard(Icons.smart_toy, 'Chatbot'),
                ToolCard(Icons.settings, 'الإعدادات'),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF241017),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Text('اشتراكات Tik Live UAE',
                      style: TextStyle(fontSize: 19)),
                  SizedBox(height: 12),
                  Text('أسبوعي: 20 درهم'),
                  Text('شهري: 50 درهم'),
                  Text('سنوي: 300 درهم'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToolCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const ToolCard(this.icon, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155,
      height: 90,
      child: Card(
        color: const Color(0xFF30141F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: const Color(0xFFE6A0B0)),
            const SizedBox(height: 7),
            Text(label),
          ],
        ),
      ),
    );
  }
}
