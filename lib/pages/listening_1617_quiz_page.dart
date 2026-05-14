import 'package:flutter/material.dart';
import '../listening_1617_data.dart';
import '../widgets/practice_card.dart';

class ListeningPart1617QuizPage extends StatefulWidget {
  const ListeningPart1617QuizPage({super.key, required this.task});

  final ListeningPart1617Data task;

  @override
  State<ListeningPart1617QuizPage> createState() => _ListeningPart1617QuizPageState();
}

class _ListeningPart1617QuizPageState extends State<ListeningPart1617QuizPage> {
  final Map<int, String?> _userAnswers = {};
  bool _hasChecked = false;
  bool _isAllCorrect = false;

  void _checkAnswers() {
    if (_userAnswers.length < widget.task.questions.length) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vui lòng trả lời hết tất cả các câu hỏi.')),
      );
      return;
    }

    bool allCorrect = true;
    for (int i = 0; i < widget.task.questions.length; i++) {
      if (_userAnswers[i] != widget.task.questions[i].answer) {
        allCorrect = false;
      }
    }

    setState(() {
      _hasChecked = true;
      _isAllCorrect = allCorrect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PHẦN ${widget.task.partNumber}: ${widget.task.testName}')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          children: [
            PracticeCard(
              title: 'Yêu cầu bài nghe',
              icon: Icons.headphones_rounded,
              child: Text(
                widget.task.description,
                style: const TextStyle(fontSize: 15, height: 1.5),
              ),
            ),
            const SizedBox(height: 24),
            ...List.generate(widget.task.questions.length, (index) {
              final q = widget.task.questions[index];
              final isCorrect = _hasChecked && _userAnswers[index] == q.answer;
              final isWrong = _hasChecked && _userAnswers[index] != q.answer;

              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: _hasChecked
                        ? (isCorrect ? Colors.green : Colors.red)
                        : Theme.of(context).colorScheme.outlineVariant,
                    width: _hasChecked ? 2 : 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Câu hỏi ${index + 1}:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      q.question,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    ...q.options.map((option) {
                      final isOptionSelected = _userAnswers[index] == option;
                      final isOptionCorrect = _hasChecked && option == q.answer;

                      return InkWell(
                        onTap: _hasChecked ? null : () {
                          setState(() {
                            _userAnswers[index] = option;
                          });
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          margin: const EdgeInsets.only(bottom: 4),
                          decoration: BoxDecoration(
                            color: isOptionSelected 
                                ? Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.3)
                                : null,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                isOptionSelected ? Icons.radio_button_checked_rounded : Icons.radio_button_off_rounded,
                                size: 20,
                                color: isOptionSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  option,
                                  style: TextStyle(
                                    color: isOptionCorrect ? Colors.green : (isOptionSelected && isWrong ? Colors.red : null),
                                    fontWeight: isOptionCorrect ? FontWeight.bold : null,
                                  ),
                                ),
                              ),
                              if (isOptionCorrect)
                                const Icon(Icons.check_circle_rounded, color: Colors.green, size: 20),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              );
            }),
            const SizedBox(height: 12),
            if (_hasChecked && _isAllCorrect)
              const PracticeCard(
                title: 'Tuyệt vời!',
                icon: Icons.celebration_rounded,
                child: Text('Bạn đã trả lời chính xác tất cả các câu hỏi.'),
              ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: _hasChecked && _isAllCorrect
                  ? FilledButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_rounded),
                      label: const Text('Quay lại danh sách'),
                    )
                  : FilledButton(
                      onPressed: _checkAnswers,
                      child: Text(_hasChecked ? 'Làm lại' : 'Kiểm tra đáp án'),
                    ),
            ),
            if (_hasChecked && !_isAllCorrect)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _hasChecked = false;
                      _userAnswers.clear();
                    });
                  },
                  child: const Text('Thử lại lần nữa'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
