import 'package:flutter/material.dart';
import '../listening_data.dart';
import '../listening_1617_data.dart';

class ListeningAnswersPage extends StatelessWidget {
  const ListeningAnswersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đáp án')),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: _CollapsibleListeningAnswersList(),
        ),
      ),
    );
  }
}

class _CollapsibleListeningAnswersList extends StatefulWidget {
  const _CollapsibleListeningAnswersList();

  @override
  State<_CollapsibleListeningAnswersList> createState() =>
      _CollapsibleListeningAnswersListState();
}

class _CollapsibleListeningAnswersListState
    extends State<_CollapsibleListeningAnswersList> {
  final Set<String> _hiddenSections = {};

  void _toggleSection(String id) {
    setState(() {
      if (_hiddenSections.contains(id)) {
        _hiddenSections.remove(id);
      } else {
        _hiddenSections.add(id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final part16Tasks = listeningPart1617Tasks.where((t) => t.partNumber == '16').toList();
    final part17Tasks = listeningPart1617Tasks.where((t) => t.partNumber == '17').toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // PART 1 - 13 (Original Tests)
        Text(
          'PHẦN 1 - 13',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        for (final test in listeningTests) ...[
          _CollapsibleTestAnswers(
            test: test,
            isHidden: _hiddenSections.contains('test_${test.number}'),
            onToggle: () => _toggleSection('test_${test.number}'),
          ),
          const SizedBox(height: 12),
        ],
        const SizedBox(height: 24),
        
        // PART 16
        Text(
          'PHẦN 16',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        for (final task in part16Tasks) ...[
          _CollapsiblePart1617Answers(
            task: task,
            isHidden: _hiddenSections.contains('p16_${task.id}'),
            onToggle: () => _toggleSection('p16_${task.id}'),
          ),
          const SizedBox(height: 12),
        ],
        const SizedBox(height: 24),

        // PART 17
        Text(
          'PHẦN 17',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        for (final task in part17Tasks) ...[
          _CollapsiblePart1617Answers(
            task: task,
            isHidden: _hiddenSections.contains('p17_${task.id}'),
            onToggle: () => _toggleSection('p17_${task.id}'),
          ),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _CollapsibleTestAnswers extends StatelessWidget {
  const _CollapsibleTestAnswers({
    required this.test,
    required this.isHidden,
    required this.onToggle,
  });

  final ListeningTestData test;
  final bool isHidden;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onToggle,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Icon(
                    isHidden ? Icons.keyboard_arrow_right_rounded : Icons.keyboard_arrow_down_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Test ${test.number}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          if (!isHidden)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final question in test.questions)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '${question.number}: ${question.correctAnswer}',
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _CollapsiblePart1617Answers extends StatelessWidget {
  const _CollapsiblePart1617Answers({
    required this.task,
    required this.isHidden,
    required this.onToggle,
  });

  final ListeningPart1617Data task;
  final bool isHidden;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onToggle,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Icon(
                    isHidden ? Icons.keyboard_arrow_right_rounded : Icons.keyboard_arrow_down_rounded,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      task.testName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!isHidden)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < task.questions.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        '${i + 1}. ${task.questions[i].answer}',
                        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
