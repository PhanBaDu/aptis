import 'package:flutter/material.dart';
import '../reading_data.dart';
import '../widgets/practice_card.dart';

class ReadingQuizPage extends StatefulWidget {
  const ReadingQuizPage({super.key, required this.topic});

  final ReadingTopicData topic;

  @override
  State<ReadingQuizPage> createState() => _ReadingQuizPageState();
}

class _ReadingQuizPageState extends State<ReadingQuizPage> {
  late List<String> _shuffledSentences;
  bool _isCorrect = false;
  bool _hasChecked = false;

  @override
  void initState() {
    super.initState();
    _startQuiz();
  }

  void _startQuiz() {
    _shuffledSentences = List.from(widget.topic.sentences);
    _shuffledSentences.shuffle();
    _isCorrect = false;
    _hasChecked = false;
    // Check if by chance it's already correct (rare but possible)
    _checkOrder(silent: true);
  }

  void _checkOrder({bool silent = false}) {
    bool correct = true;
    for (int i = 0; i < widget.topic.sentences.length; i++) {
      if (_shuffledSentences[i] != widget.topic.sentences[i]) {
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

    if (correct) {
      // Auto-back or something? Maybe just show success
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Luyện tập Reading Part 2 & 3')),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
              child: Text(
                'Nhấn giữ và kéo các câu để sắp xếp theo thứ tự đúng.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            Expanded(
              child: ReorderableListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 24),
                buildDefaultDragHandles: false,
                itemCount: _shuffledSentences.length,
                itemBuilder: (context, index) {
                  final sentence = _shuffledSentences[index];
                  return Card(
                    key: ValueKey(sentence),
                    elevation: 0,
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: _hasChecked
                            ? (sentence == widget.topic.sentences[index]
                                ? Colors.green.withValues(alpha: 0.5)
                                : Colors.red.withValues(alpha: 0.5))
                            : Theme.of(context).colorScheme.outlineVariant,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      title: Text(sentence),
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
                    final item = _shuffledSentences.removeAt(oldIndex);
                    _shuffledSentences.insert(newIndex, item);
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
                      const Text('Bạn đã sắp xếp đúng thứ tự các câu văn.'),
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
                    if (readingTopics.indexOf(widget.topic) < readingTopics.length - 1)
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: () {
                            final nextTopic = readingTopics[readingTopics.indexOf(widget.topic) + 1];
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute<void>(
                                builder: (context) => ReadingQuizPage(topic: nextTopic),
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
            // Vietnamese Hint Section
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lightbulb_outline_rounded,
                          size: 18,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'GỢI Ý HỌC THUỘC (HINT)',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '-> ${widget.topic.hint}',
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.onSecondaryContainer,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
