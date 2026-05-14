import 'package:flutter/material.dart';
import '../models/skill_page_data.dart';
import '../widgets/skill_header.dart';
import '../widgets/listening_mode_button.dart'; // Reusing the button style
import '../reading_data.dart';
import 'reading_study_page.dart';
import 'reading_picker_pages.dart';
import 'reading_part1_picker_page.dart';
import 'reading_answers_page.dart';
import 'reading_part4_picker_page.dart';
import 'reading_part5_picker_page.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key, required this.data});

  final SkillPageData data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      children: [
        SkillHeader(data: data),
        const SizedBox(height: 16),
        Text(
          'LUYỆN TẬP GHI NHỚ',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'Đáp án Part 1',
          description: 'Danh sách đáp án nhanh cho 11 câu Part 1.',
          icon: Icons.checklist_rounded,
          color: Colors.orange,
          page: const ReadingAnswersPage(initialIndex: 0),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'Key Points Part 2 & 3',
          description: 'Học thuộc lòng ý chính của 30 chủ đề sắp xếp câu.',
          icon: Icons.lightbulb_rounded,
          color: Colors.amber,
          page: const ReadingAnswersPage(initialIndex: 1),
        ),
        const SizedBox(height: 24),
        Text(
          'LUYỆN TẬP THEO PHẦN',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'PART 1',
          description: 'Hoàn thành câu văn ngắn (Short sentence completion).',
          icon: Icons.looks_one_rounded,
          color: data.color,
          page: const ReadingPart1PickerPage(),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'PART 2 & 3',
          description: 'Sắp xếp các câu văn thành một đoạn văn hoàn chỉnh (${readingTopics.length} chủ đề).',
          icon: Icons.looks_two_rounded,
          color: data.color,
          page: const ReadingPickerPage(title: 'PART 2 & 3 - Sắp xếp câu'),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'PART 4',
          description: 'Ghép nối ý kiến: Đọc 4 đoạn văn và trả lời 7 câu hỏi.',
          icon: Icons.people_rounded,
          color: data.color,
          page: const ReadingPart4PickerPage(),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'PART 5',
          description: 'Đọc hiểu văn bản dài và Nối tiêu đề cho các đoạn văn.',
          icon: Icons.text_snippet_rounded,
          color: data.color,
          page: const ReadingPart5PickerPage(),
        ),
      ],
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.construction_rounded, size: 64, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5)),
            const SizedBox(height: 16),
            const Text('Tính năng đang được phát triển...'),
          ],
        ),
      ),
    );
  }
}
