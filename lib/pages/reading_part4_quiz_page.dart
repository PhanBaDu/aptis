import 'package:flutter/material.dart';
import '../reading_part4_data.dart';
import '../widgets/practice_card.dart';

class ReadingPart4QuizPage extends StatefulWidget {
  const ReadingPart4QuizPage({super.key, required this.topic});

  final ReadingPart4Data topic;

  @override
  State<ReadingPart4QuizPage> createState() => _ReadingPart4QuizPageState();
}

class _ReadingPart4QuizPageState extends State<ReadingPart4QuizPage> {
  final Map<int, String?> _userAnswers = {};
  bool _hasChecked = false;
  bool _isAllCorrect = false;

  late List<ReadingPart4Question> _shuffledQuestions;
  late List<String> _shuffledPersonKeys;
  late Map<String, String> _displayToOriginalKey; // 'A' (display) -> 'C' (original)

  @override
  void initState() {
    super.initState();
    _initQuiz();
  }

  void _initQuiz() {
    // Shuffle questions
    _shuffledQuestions = List.from(widget.topic.questions);
    _shuffledQuestions.shuffle();

    // Shuffle person keys
    final keys = ['A', 'B', 'C', 'D'];
    final originalKeys = List.from(keys);
    keys.shuffle();
    _shuffledPersonKeys = keys; // e.g. ['C', 'A', 'D', 'B']

    _displayToOriginalKey = {};
    for (int i = 0; i < 4; i++) {
      // Tab i (Person A, B, C, D) will show content of _shuffledPersonKeys[i]
      _displayToOriginalKey[originalKeys[i]] = _shuffledPersonKeys[i];
    }
    
    _userAnswers.clear();
    _hasChecked = false;
  }

  void _checkAnswers() {
    if (_userAnswers.length < _shuffledQuestions.length) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vui lòng trả lời hết tất cả các câu hỏi.')),
      );
      return;
    }

    bool allCorrect = true;
    for (int i = 0; i < _shuffledQuestions.length; i++) {
      final originalAnswer = _shuffledQuestions[i].answer;
      final userAnswer = _userAnswers[i]; // This is 'A', 'B', 'C', or 'D'

      // Map userAnswer back to original key
      final originalUserKey = _displayToOriginalKey[userAnswer];
      
      if (originalUserKey != originalAnswer) {
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Topic ${widget.topic.id}${widget.topic.version != null ? ' - ${widget.topic.version}' : ''}'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Person A'),
              Tab(text: 'Person B'),
              Tab(text: 'Person C'),
              Tab(text: 'Person D'),
            ],
          ),
        ),
        body: Column(
          children: [
            // Fixed height area for texts to scroll
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: TabBarView(
                children: [
                  _buildPersonText(_shuffledPersonKeys[0]),
                  _buildPersonText(_shuffledPersonKeys[1]),
                  _buildPersonText(_shuffledPersonKeys[2]),
                  _buildPersonText(_shuffledPersonKeys[3]),
                ],
              ),
            ),
            const Divider(height: 1),
            // Scrollable questions area
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                itemCount: _shuffledQuestions.length + 1,
                itemBuilder: (context, index) {
                  if (index == _shuffledQuestions.length) {
                    return _buildFooter();
                  }

                  final q = _shuffledQuestions[index];
                  // Find which display label (A-D) corresponds to the original answer
                  String correctDisplayLabel = '';
                  _displayToOriginalKey.forEach((display, original) {
                    if (original == q.answer) correctDisplayLabel = display;
                  });

                  final isCorrect = _hasChecked && _userAnswers[index] == correctDisplayLabel;
                  final isWrong = _hasChecked && _userAnswers[index] != correctDisplayLabel;

                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(12),
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
                          '${index + 1}. ${q.question}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: ['A', 'B', 'C', 'D'].map((option) {
                            final isSelected = _userAnswers[index] == option;
                            return ChoiceChip(
                              label: Text(option),
                              selected: isSelected,
                              onSelected: _hasChecked ? null : (selected) {
                                setState(() {
                                  _userAnswers[index] = selected ? option : null;
                                });
                              },
                            );
                          }).toList(),
                        ),
                        if (_hasChecked && isWrong)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Đáp án đúng: $correctDisplayLabel',
                              style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonText(String originalKey) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Text(
        widget.topic.persons[originalKey] ?? '',
        style: const TextStyle(height: 1.6, fontSize: 15),
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        if (_hasChecked && _isAllCorrect)
          const PracticeCard(
            title: 'Tuyệt vời!',
            icon: Icons.celebration_rounded,
            child: Text('Bạn đã trả lời chính xác tất cả các câu hỏi.'),
          ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: _hasChecked && _isAllCorrect
              ? FilledButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_rounded),
                  label: const Text('Quay lại danh sách'),
                )
              : FilledButton(
                  onPressed: _checkAnswers,
                  child: const Text('Kiểm tra đáp án'),
                ),
        ),
        if (_hasChecked && !_isAllCorrect)
          TextButton(
            onPressed: () {
              setState(() {
                _initQuiz();
              });
            },
            child: const Text('Làm lại (Đảo đề mới)'),
          ),
      ],
    );
  }
}
