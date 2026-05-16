import 'dart:math';
import 'package:flutter/material.dart';
import '../reading_part1_data.dart';
import '../widgets/practice_card.dart';

class ReadingPart1QuizPage extends StatefulWidget {
  const ReadingPart1QuizPage({super.key, required this.topic, this.endId});

  final ReadingPart1Data topic;
  final int? endId;

  @override
  State<ReadingPart1QuizPage> createState() => _ReadingPart1QuizPageState();
}

class _ReadingPart1QuizPageState extends State<ReadingPart1QuizPage> {
  late Map<int, List<String>> _options;
  late Map<int, String?> _selectedAnswers;
  bool _hasChecked = false;
  bool _isAllCorrect = false;

  @override
  void initState() {
    super.initState();
    _initializeQuiz();
  }

  void _initializeQuiz() {
    _options = {};
    _selectedAnswers = {};
    _hasChecked = false;
    _isAllCorrect = false;

    final random = Random();
    for (int i = 0; i < widget.topic.answers.length; i++) {
      final choices = [widget.topic.answers[i], ...widget.topic.distractors[i]];
      choices.shuffle(random);
      _options[i] = choices;
      _selectedAnswers[i] = null;
    }
  }

  void _checkAnswers() {
    bool allCorrect = true;
    for (int i = 0; i < widget.topic.answers.length; i++) {
      if (_selectedAnswers[i] != widget.topic.answers[i]) {
        allCorrect = false;
        break;
      }
    }

    setState(() {
      _hasChecked = true;
      _isAllCorrect = allCorrect;
    });
  }

  void _nextTopic() {
    final currentIndex = readingPart1Topics.indexOf(widget.topic);
    final nextTopic = (currentIndex < readingPart1Topics.length - 1) ? readingPart1Topics[currentIndex + 1] : null;

    if (nextTopic != null && (widget.endId == null || nextTopic.id <= widget.endId!)) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (context) => ReadingPart1QuizPage(
            topic: nextTopic,
            endId: widget.endId,
          ),
        ),
      );
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Luyện tập Reading Part 1')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Chọn từ thích hợp cho mỗi chỗ trống để hoàn thành đoạn văn.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24),
              _buildTextWithGaps(),
              const SizedBox(height: 32),
              if (_hasChecked)
                PracticeCard(
                  title: _isAllCorrect ? 'Chính xác!' : 'Chưa đúng',
                  icon: _isAllCorrect ? Icons.check_circle_rounded : Icons.cancel_rounded,
                  child: Text(
                    _isAllCorrect
                        ? 'Bạn đã hoàn thành tốt đoạn văn này.'
                        : 'Vẫn còn lỗi sai, hãy kiểm tra lại các ô màu đỏ.',
                  ),
                ),
              const SizedBox(height: 24),
              Row(
                children: [
                  if (!_isAllCorrect) ...[
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _initializeQuiz,
                        child: const Text('Làm lại'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: FilledButton(
                        onPressed: _allFilled ? _checkAnswers : null,
                        child: const Text('Kiểm tra'),
                      ),
                    ),
                  ] else
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: _nextTopic,
                        icon: const Icon(Icons.arrow_forward_rounded),
                        label: const Text('Câu tiếp theo'),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 32),
              // Vietnamese Hint Section
              Container(
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
            ],
          ),
        ),
      ),
    );
  }

  bool get _allFilled => _selectedAnswers.values.every((v) => v != null);

  Widget _buildTextWithGaps() {
    final parts = widget.topic.text.split('**');
    final children = <Widget>[];
    int answerIndex = 0;

    for (int i = 0; i < parts.length; i++) {
      if (i % 2 == 0) {
        // Regular text
        if (parts[i].isNotEmpty) {
          children.add(
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                parts[i],
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          );
        }
      } else {
        // Gap
        final idx = answerIndex++;
        children.add(_buildGap(idx));
      }
    }

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 4,
      children: children,
    );
  }

  Widget _buildGap(int index) {
    final selectedValue = _selectedAnswers[index];
    final isCorrect = _hasChecked && selectedValue == widget.topic.answers[index];
    final isWrong = _hasChecked && selectedValue != widget.topic.answers[index];

    Color gapColor = Theme.of(context).colorScheme.surfaceContainerHighest;
    if (isCorrect) gapColor = Colors.green.withValues(alpha: 0.2);
    if (isWrong) gapColor = Colors.red.withValues(alpha: 0.2);

    return PopupMenuButton<String>(
      onSelected: (value) {
        setState(() {
          _selectedAnswers[index] = value;
          _hasChecked = false;
        });
      },
      itemBuilder: (context) => _options[index]!.map((opt) {
        return PopupMenuItem<String>(
          value: opt,
          child: Text(opt),
        );
      }).toList(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: gapColor,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isCorrect ? Colors.green : (isWrong ? Colors.red : Theme.of(context).colorScheme.outline),
            width: isWrong || isCorrect ? 2 : 1,
          ),
        ),
        child: Text(
          selectedValue ?? ' [.....] ',
          style: TextStyle(
            color: selectedValue == null ? Theme.of(context).colorScheme.outline : Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
