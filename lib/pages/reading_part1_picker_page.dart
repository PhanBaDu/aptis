import 'package:flutter/material.dart';
import '../reading_part1_data.dart';
import 'reading_part1_quiz_page.dart';

class ReadingPart1PickerPage extends StatelessWidget {
  const ReadingPart1PickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reading Part 1 - Chọn Test')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Text(
              'Luyện tập theo từng nhóm câu hỏi để dễ ghi nhớ hơn.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 24),
            _buildTestButton(
              context,
              title: 'Test 1 - 5',
              description: 'Luyện tập từ câu 1 đến câu 5',
              startIndex: 0,
              endId: 5,
              color: Colors.blue,
            ),
            const SizedBox(height: 16),
            _buildTestButton(
              context,
              title: 'Test 6 - 10',
              description: 'Luyện tập từ câu 6 đến câu 10',
              startIndex: 5,
              endId: 10,
              color: Colors.green,
            ),
            const SizedBox(height: 16),
            _buildTestButton(
              context,
              title: 'Test 11 - 14',
              description: 'Luyện tập từ câu 11 đến câu 14',
              startIndex: 10,
              endId: 14,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestButton(
    BuildContext context, {
    required String title,
    required String description,
    required int startIndex,
    required int endId,
    required Color color,
  }) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: color.withValues(alpha: 0.2)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => ReadingPart1QuizPage(
                topic: readingPart1Topics[startIndex],
                endId: endId,
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.quiz_rounded, color: color, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
