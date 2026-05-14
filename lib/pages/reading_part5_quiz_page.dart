import 'package:flutter/material.dart';
import '../reading_part5_data.dart';
import '../widgets/practice_card.dart';

class ReadingPart5QuizPage extends StatefulWidget {
  const ReadingPart5QuizPage({super.key, required this.topic});

  final ReadingPart5Data topic;

  @override
  State<ReadingPart5QuizPage> createState() => _ReadingPart5QuizPageState();
}

class _ReadingPart5QuizPageState extends State<ReadingPart5QuizPage> {
  late List<String> _shuffledHeadings;
  bool _isCorrect = false;
  bool _hasChecked = false;

  @override
  void initState() {
    super.initState();
    _startQuiz();
  }

  void _startQuiz() {
    _shuffledHeadings = List.from(widget.topic.headings);
    _shuffledHeadings.shuffle();
    _isCorrect = false;
    _hasChecked = false;
    _checkOrder(silent: true);
  }

  void _checkOrder({bool silent = false}) {
    bool correct = true;
    for (int i = 0; i < widget.topic.headings.length; i++) {
      if (_shuffledHeadings[i] != widget.topic.headings[i]) {
        correct = false;
        break;
      }
    }

    if (silent) {
      _isCorrect = correct;
      return;
    }

    setState(() {
      _isCorrect = correct;
      _hasChecked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PART 5 - Nối tiêu đề')),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.topic.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Kéo các tiêu đề để khớp với thứ tự đoạn văn từ 1 đến 7.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReorderableListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 24),
                buildDefaultDragHandles: false,
                itemCount: _shuffledHeadings.length,
                itemBuilder: (context, index) {
                  final heading = _shuffledHeadings[index];
                  return Card(
                    key: ValueKey(heading),
                    elevation: 0,
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: _hasChecked
                            ? (heading == widget.topic.headings[index]
                                ? Colors.green.withValues(alpha: 0.5)
                                : Colors.red.withValues(alpha: 0.5))
                            : Theme.of(context).colorScheme.outlineVariant,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      title: Text(heading),
                      trailing: ReorderableDragStartListener(
                        index: index,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.drag_handle_rounded),
                        ),
                      ),
                    ),
                  );
                },
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) {
                      newIndex -= 1;
                    }
                    final item = _shuffledHeadings.removeAt(oldIndex);
                    _shuffledHeadings.insert(newIndex, item);
                    _hasChecked = false;
                  });
                },
              ),
            ),
            if (_hasChecked && _isCorrect)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PracticeCard(
                  title: 'Chính xác!',
                  icon: Icons.check_circle_rounded,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Mẹo nhớ (Mnemonic Tip):'),
                      const SizedBox(height: 8),
                      Text(
                        widget.topic.mnemonicTip,
                        style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  if (_hasChecked && _isCorrect) ...[
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.list_rounded),
                        label: const Text('Danh sách'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    if (readingPart5Topics.indexOf(widget.topic) < readingPart5Topics.length - 1)
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: () {
                            final nextTopic = readingPart5Topics[readingPart5Topics.indexOf(widget.topic) + 1];
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute<void>(
                                builder: (context) => ReadingPart5QuizPage(topic: nextTopic),
                              ),
                            );
                          },
                          icon: const Icon(Icons.arrow_forward_rounded),
                          label: const Text('Câu tiếp theo'),
                        ),
                      ),
                  ] else ...[
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _startQuiz,
                        child: const Text('Trộn lại'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: FilledButton(
                        onPressed: () => _checkOrder(),
                        child: const Text('Kiểm tra'),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
