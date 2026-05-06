import 'dart:math';

import 'package:flutter/material.dart';

import 'listening_data.dart';

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
        child: selectedSkill.name == 'Listening'
            ? ListeningPage(data: selectedSkill)
            : SkillPage(data: selectedSkill),
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

class ListeningPage extends StatelessWidget {
  const ListeningPage({super.key, required this.data});

  final SkillPageData data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      children: [
        SkillHeader(data: data),
        const SizedBox(height: 16),
        ListeningModeButton(
          title: 'Đáp án',
          description:
              'Hiển thị ${listeningTests.length} test, mỗi test có 13 đáp án để ôn lại.',
          icon: Icons.fact_check_rounded,
          color: data.color,
          page: const ListeningAnswersPage(),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'Random đề',
          description:
              'Tráo thứ tự đề và tráo cả đáp án để ôn đi ôn lại mà không bị nhớ vị trí.',
          icon: Icons.shuffle_rounded,
          color: data.color,
          page: const ListeningTestPickerPage(
            title: 'Random đề',
            randomize: true,
          ),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'Không random, theo thứ tự',
          description:
              'Giữ nguyên thứ tự đề và đáp án để tập làm quen với bài theo đúng flow.',
          icon: Icons.format_list_numbered_rounded,
          color: data.color,
          page: const ListeningTestPickerPage(
            title: 'Không random, theo thứ tự',
            randomize: false,
          ),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'Gộp nhiều đề (Random)',
          description:
              'Chọn 2, 3 hoặc nhiều đề để trộn tất cả câu hỏi lại làm một lượt.',
          icon: Icons.layers_rounded,
          color: data.color,
          page: const ListeningMultiTestPickerPage(),
        ),
      ],
    );
  }
}

class ListeningModeButton extends StatelessWidget {
  const ListeningModeButton({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.page,
  });

  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute<void>(builder: (context) => page));
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.chevron_right_rounded,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
  final Set<int> _hiddenTests = {};

  void _toggleTest(int number) {
    setState(() {
      if (_hiddenTests.contains(number)) {
        _hiddenTests.remove(number);
      } else {
        _hiddenTests.add(number);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final test in listeningTests) ...[
          _CollapsibleTestAnswers(
            test: test,
            isHidden: _hiddenTests.contains(test.number),
            onToggle: () => _toggleTest(test.number),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            onTap: onToggle,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    isHidden
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Test ${test.number}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: isHidden,
                      onChanged: (_) => onToggle(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!isHidden)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                children: [
                  for (final question in test.questions)
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .outlineVariant
                                .withValues(alpha: 0.45),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 54,
                            child: Text(
                              'Câu ${question.number}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              question.correctAnswer,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ],
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

class ListeningMultiTestPickerPage extends StatefulWidget {
  const ListeningMultiTestPickerPage({super.key});

  @override
  State<ListeningMultiTestPickerPage> createState() =>
      _ListeningMultiTestPickerPageState();
}

class _ListeningMultiTestPickerPageState
    extends State<ListeningMultiTestPickerPage> {
  final Set<int> _selectedTestNumbers = {};

  void _toggleTest(int number) {
    setState(() {
      if (_selectedTestNumbers.contains(number)) {
        _selectedTestNumbers.remove(number);
      } else {
        _selectedTestNumbers.add(number);
      }
    });
  }

  void _startCombinedTest() {
    if (_selectedTestNumbers.isEmpty) return;

    final selectedTests = listeningTests
        .where((test) => _selectedTestNumbers.contains(test.number))
        .toList();

    // Gộp tất cả câu hỏi từ các đề đã chọn
    final combinedQuestions = selectedTests
        .expand((test) => test.questions)
        .toList();

    // Tạo một đối tượng ListeningTestData giả để truyền vào QuizPage
    final combinedTest = ListeningTestData(
      number: 0, // Dùng 0 hoặc một số đặc biệt để đánh dấu là đề gộp
      questions: combinedQuestions,
    );

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => ListeningQuizPage(
          test: combinedTest,
          randomize: true,
          customTitle: 'Gộp ${_selectedTestNumbers.length} đề',
          reviewWrongAnswers: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gộp nhiều đề')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
                children: [
                  Text(
                    'Chọn các đề bạn muốn gộp lại để luyện tập trộn lẫn.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listeningTests.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 120,
                          mainAxisExtent: 56,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                    itemBuilder: (context, index) {
                      final test = listeningTests[index];
                      final isSelected = _selectedTestNumbers.contains(
                        test.number,
                      );

                      return FilterChip(
                        label: Text('Test ${test.number}'),
                        selected: isSelected,
                        onSelected: (_) => _toggleTest(test.number),
                        showCheckmark: false,
                        selectedColor: Theme.of(
                          context,
                        ).colorScheme.primaryContainer,
                        labelStyle: TextStyle(
                          color: isSelected
                              ? Theme.of(context).colorScheme.onPrimaryContainer
                              : null,
                          fontWeight: isSelected ? FontWeight.bold : null,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: _selectedTestNumbers.length >= 2
                      ? _startCombinedTest
                      : null,
                  icon: const Icon(Icons.play_arrow_rounded),
                  label: Text(
                    _selectedTestNumbers.length < 2
                        ? 'Chọn ít nhất 2 đề'
                        : 'Bắt đầu luyện ${_selectedTestNumbers.length} đề',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListeningTestPickerPage extends StatelessWidget {
  const ListeningTestPickerPage({
    super.key,
    required this.title,
    required this.randomize,
  });

  final String title;
  final bool randomize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Text(
              randomize
                  ? 'Chọn test để luyện với thứ tự câu và đáp án được tráo.'
                  : 'Chọn test để luyện đúng thứ tự gốc trong file.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listeningTests.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
                mainAxisExtent: 72,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                final test = listeningTests[index];

                return FilledButton.tonal(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) =>
                            ListeningQuizPage(test: test, randomize: randomize),
                      ),
                    );
                  },
                  child: Text('Test ${test.number}'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListeningQuizPage extends StatefulWidget {
  const ListeningQuizPage({
    super.key,
    required this.test,
    required this.randomize,
    this.customTitle,
    this.reviewWrongAnswers = false,
  });

  final ListeningTestData test;
  final bool randomize;
  final String? customTitle;
  final bool reviewWrongAnswers;

  @override
  State<ListeningQuizPage> createState() => _ListeningQuizPageState();
}

class _ListeningQuizPageState extends State<ListeningQuizPage> {
  late List<ListeningQuestionAttempt> _questions;
  final List<ListeningQuestionAttempt> _wrongQuestions = [];
  int _questionIndex = 0;
  String? _selectedAnswer;
  bool _answered = false;
  bool _isCorrect = false;
  bool _completed = false;

  @override
  void initState() {
    super.initState();
    _startAttempt();
  }

  void _startAttempt() {
    final random = Random();
    final initialQuestions = widget.test.questions.map((question) {
      final options = [...question.options];
      if (widget.randomize) {
        options.shuffle(random);
      }
      return ListeningQuestionAttempt(question: question, options: options);
    }).toList();

    if (widget.randomize) {
      initialQuestions.shuffle(random);
    }

    _startQuestionRound(initialQuestions);
    _completed = false;
  }

  void _startQuestionRound(List<ListeningQuestionAttempt> questions) {
    _questions = questions;
    _wrongQuestions.clear();
    _questionIndex = 0;
    _selectedAnswer = null;
    _answered = false;
    _isCorrect = false;
  }

  void _chooseAnswer(String answer) {
    if (_answered) {
      return;
    }

    final current = _questions[_questionIndex].question;
    final isCorrect = answer == current.correctAnswer;

    setState(() {
      _selectedAnswer = answer;
      _answered = true;
      _isCorrect = isCorrect;
    });

    if (isCorrect) {
      // Nếu đúng, đợi một chút để người dùng thấy feedback rồi tự động sang câu tiếp theo.
      Future<void>.delayed(const Duration(milliseconds: 600), () {
        if (!mounted) return;
        _goNext();
      });
    } else if (widget.reviewWrongAnswers) {
      _wrongQuestions.add(_questions[_questionIndex]);
    } else {
      // Nếu sai, tự động reset bài test sau 1 giây.
      Future<void>.delayed(const Duration(seconds: 1), () {
        if (!mounted) return;
        setState(_startAttempt);
      });
    }
  }

  void _goNext() {
    if (_questionIndex == _questions.length - 1) {
      setState(() {
        _completed = true;
      });
      return;
    }

    setState(() {
      _questionIndex++;
      _selectedAnswer = null;
      _answered = false;
      _isCorrect = false;
    });
  }

  void _startWrongQuestionReview() {
    final questions = [..._wrongQuestions];

    setState(() {
      _startQuestionRound(questions);
      _completed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.customTitle ?? 'Test ${widget.test.number}';
    final shouldReviewWrongAnswers =
        widget.reviewWrongAnswers && _wrongQuestions.isNotEmpty;

    if (_completed) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PracticeCard(
                  title: shouldReviewWrongAnswers
                      ? 'Hoàn thành lượt luyện'
                      : 'Hoàn thành $title',
                  icon: shouldReviewWrongAnswers
                      ? Icons.replay_circle_filled_rounded
                      : Icons.verified_rounded,
                  child: Text(
                    shouldReviewWrongAnswers
                        ? 'Bạn còn ${_wrongQuestions.length} câu sai. Học lại các câu này cho tới khi trả lời đúng hết.'
                        : 'Bạn đã trả lời đúng toàn bộ câu trong phần này.',
                  ),
                ),
                const SizedBox(height: 16),
                if (shouldReviewWrongAnswers) ...[
                  FilledButton.icon(
                    onPressed: _startWrongQuestionReview,
                    icon: const Icon(Icons.school_rounded),
                    label: Text('Học lại ${_wrongQuestions.length} câu sai'),
                  ),
                  const SizedBox(height: 10),
                ],
                FilledButton.icon(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.exit_to_app_rounded),
                  label: const Text('Thoát'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    final attempt = _questions[_questionIndex];
    final question = attempt.question;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Text(
              'Câu ${_questionIndex + 1}/${_questions.length}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              question.question,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            for (final option in attempt.options)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CheckboxListTile(
                  value: _selectedAnswer == option,
                  onChanged: _answered ? null : (_) => _chooseAnswer(option),
                  title: Text(option),
                  controlAffinity: ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  tileColor: Theme.of(context).colorScheme.surface,
                ),
              ),
            if (_answered) ...[
              const SizedBox(height: 8),
              PracticeCard(
                title: _isCorrect ? 'Đúng' : 'Sai',
                icon: _isCorrect
                    ? Icons.check_circle_rounded
                    : Icons.cancel_rounded,
                child: _AnswerFeedback(
                  isCorrect: _isCorrect,
                  showWrongDetails: widget.reviewWrongAnswers,
                  selectedAnswer: _selectedAnswer,
                  correctAnswer: question.correctAnswer,
                  onNext: _isCorrect || !widget.reviewWrongAnswers
                      ? null
                      : _goNext,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _AnswerFeedback extends StatelessWidget {
  const _AnswerFeedback({
    required this.isCorrect,
    required this.showWrongDetails,
    required this.selectedAnswer,
    required this.correctAnswer,
    required this.onNext,
  });

  final bool isCorrect;
  final bool showWrongDetails;
  final String? selectedAnswer;
  final String correctAnswer;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    if (isCorrect || !showWrongDetails) {
      return Text('Đáp án: $correctAnswer');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _AnswerFeedbackRow(
          label: 'Bạn chọn',
          answer: selectedAnswer ?? '',
          color: Theme.of(context).colorScheme.error,
        ),
        const SizedBox(height: 10),
        _AnswerFeedbackRow(
          label: 'Đáp án đúng',
          answer: correctAnswer,
          color: Theme.of(context).colorScheme.primary,
        ),
        if (onNext != null) ...[
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: onNext,
            icon: const Icon(Icons.arrow_forward_rounded),
            label: const Text('Đi tiếp'),
          ),
        ],
      ],
    );
  }
}

class _AnswerFeedbackRow extends StatelessWidget {
  const _AnswerFeedbackRow({
    required this.label,
    required this.answer,
    required this.color,
  });

  final String label;
  final String answer;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 104,
          child: Text(
            '$label:',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Expanded(
          child: Text(
            answer,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}

class ListeningQuestionAttempt {
  const ListeningQuestionAttempt({
    required this.question,
    required this.options,
  });

  final ListeningQuestionData question;
  final List<String> options;
}

class ListeningAnswersList extends StatelessWidget {
  const ListeningAnswersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final test in listeningTests) ...[
          PracticeCard(
            title: 'Test ${test.number}',
            icon: Icons.fact_check_rounded,
            child: Column(
              children: [
                for (final question in test.questions)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Theme.of(
                            context,
                          ).colorScheme.outlineVariant.withValues(alpha: 0.45),
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 54,
                          child: Text(
                            'Câu ${question.number}',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            question.correctAnswer,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class FlatListeningAnswersList extends StatelessWidget {
  const FlatListeningAnswersList({super.key});

  @override
  Widget build(BuildContext context) {
    final answers = [
      for (final test in listeningTests)
        for (final question in test.questions) question.correctAnswer,
    ];

    return Column(
      children: [
        for (var index = 0; index < answers.length; index++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 9),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(
                    context,
                  ).colorScheme.outlineVariant.withValues(alpha: 0.45),
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 34,
                  child: Text(
                    '${index + 1}.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    answers[index],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class SkillPage extends StatelessWidget {
  const SkillPage({super.key, required this.data});

  final SkillPageData data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      children: [
        SkillHeader(data: data),
        const SizedBox(height: 16),
        PracticeCard(
          title: 'Mục tiêu hôm nay',
          icon: Icons.flag_rounded,
          child: Text(data.todayGoal),
        ),
        const SizedBox(height: 12),
        PracticeCard(
          title: 'Khởi động',
          icon: Icons.bolt_rounded,
          child: Text(data.warmUp),
        ),
        const SizedBox(height: 12),
        PracticeCard(
          title: 'Điểm cần tập trung',
          icon: Icons.track_changes_rounded,
          child: Column(
            children: [
              for (final point in data.focusPoints)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_rounded,
                        color: data.color,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Expanded(child: Text(point)),
                    ],
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        PracticeCard(
          title: 'Log cá nhân',
          icon: Icons.sticky_note_2_rounded,
          child: Text(
            'Chưa có dữ liệu. Sau này mình sẽ thêm phần lưu bài đã làm, lỗi hay gặp, '
            'và điểm tự chấm cho riêng từng kỹ năng.',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}

class SkillHeader extends StatelessWidget {
  const SkillHeader({super.key, required this.data});

  final SkillPageData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: data.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(data.icon, color: Colors.white, size: 42),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  data.subtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withValues(alpha: 0.88),
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

class PracticeCard extends StatelessWidget {
  const PracticeCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
  });

  final String title;
  final IconData icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            DefaultTextStyle.merge(
              style: Theme.of(context).textTheme.bodyLarge,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

class SkillPageData {
  const SkillPageData({
    required this.name,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.todayGoal,
    required this.warmUp,
    required this.focusPoints,
  });

  final String name;
  final String subtitle;
  final IconData icon;
  final Color color;
  final String todayGoal;
  final String warmUp;
  final List<String> focusPoints;
}
