import 'package:flutter/material.dart';
import '../listening_1617_data.dart';
import 'listening_1617_quiz_page.dart';

class ListeningPart1617PickerPage extends StatelessWidget {
  const ListeningPart1617PickerPage({super.key, required this.partNumber});

  final String partNumber;

  @override
  Widget build(BuildContext context) {
    final tasks = listeningPart1617Tasks.where((t) => t.partNumber == partNumber).toList();

    return Scaffold(
      appBar: AppBar(title: Text('LUYỆN TẬP PHẦN $partNumber')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Text(
              'Chọn một bài để luyện tập kỹ năng nghe hiểu và trả lời 2 câu hỏi trắc nghiệm.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tasks.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisExtent: 72,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                final task = tasks[index];
                return FilledButton.tonal(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => ListeningPart1617QuizPage(task: task),
                      ),
                    );
                  },
                  child: Text(
                    task.testName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
