import 'package:flutter/material.dart';

import 'models/skill_page_data.dart';
import 'pages/listening_page.dart';
import 'pages/reading_page.dart';
import 'pages/skill_page.dart';

void main() {
  runApp(const AptisApp());
}

class AptisApp extends StatelessWidget {
  const AptisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Aptis English',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2F6F73),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F7F4),
        useMaterial3: true,
      ),
      home: const SkillsHomePage(),
    );
  }
}

class SkillsHomePage extends StatefulWidget {
  const SkillsHomePage({super.key});

  @override
  State<SkillsHomePage> createState() => _SkillsHomePageState();
}

class _SkillsHomePageState extends State<SkillsHomePage> {
  int _selectedIndex = 0;

  static const List<SkillPageData> _skills = [
    SkillPageData(
      name: 'Listening',
      subtitle: 'Nghe chủ động, bắt keyword, ghi lại lỗi nghe sai.',
      icon: Icons.headphones_rounded,
      color: Color(0xFF2F6F73),
      todayGoal: '20 phút shadowing + 1 bài Aptis Listening Part 2',
      warmUp: 'Nghe 1 đoạn ngắn, ghi 5 từ khóa trước khi xem transcript.',
      focusPoints: [
        'Numbers, dates, time',
        'Speaker attitude',
        'Distractors in short conversations',
      ],
    ),
    SkillPageData(
      name: 'Reading',
      subtitle: 'Đọc nhanh để lấy ý, đọc chậm để sửa bẫy từ vựng.',
      icon: Icons.menu_book_rounded,
      color: Color(0xFF7B5B2E),
      todayGoal: '2 passage ngắn + review toàn bộ câu sai',
      warmUp: 'Đọc tiêu đề và câu đầu mỗi đoạn, đoán main idea trong 2 phút.',
      focusPoints: [
        'Skimming main idea',
        'Scanning names and numbers',
        'Paraphrase matching',
      ],
    ),
    SkillPageData(
      name: 'Writing',
      subtitle: 'Viết gọn, rõ ý, đúng format theo từng part.',
      icon: Icons.edit_note_rounded,
      color: Color(0xFF85586F),
      todayGoal: '1 email ngắn + 1 đoạn opinion 120-150 từ',
      warmUp: 'Viết 3 câu paraphrase cho cùng một ý trước khi làm bài.',
      focusPoints: ['Task response', 'Linking words', 'Common grammar slips'],
    ),
    SkillPageData(
      name: 'Speaking',
      subtitle: 'Nói tự nhiên hơn bằng khung trả lời ngắn và có ví dụ.',
      icon: Icons.mic_rounded,
      color: Color(0xFF4F5F88),
      todayGoal: 'Ghi âm 5 câu trả lời, mỗi câu 30-45 giây',
      warmUp:
          'Chọn 1 topic quen thuộc, nói theo khung answer - reason - example.',
      focusPoints: [
        'Fluency before complexity',
        'Clear examples',
        'Pronunciation cleanup',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedSkill = _skills[_selectedIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('My Aptis English'), centerTitle: false),
      body: SafeArea(
        child: switch (selectedSkill.name) {
          'Listening' => ListeningPage(data: selectedSkill),
          'Reading' => ReadingPage(data: selectedSkill),
          _ => SkillPage(data: selectedSkill),
        },
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: [
          for (final skill in _skills)
            NavigationDestination(icon: Icon(skill.icon), label: skill.name),
        ],
      ),
    );
  }
}
