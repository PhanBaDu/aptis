import 'dart:math';
import 'package:flutter/material.dart';
import '../listening_data.dart';
import '../models/listening_attempt.dart';
import '../widgets/practice_card.dart';
import '../widgets/highlighted_text.dart';

class ListeningQuizPage extends StatefulWidget {
  const ListeningQuizPage({
    super.key,
    required this.test,
    required this.randomize,
    this.customTitle,
    this.reviewWrongAnswers = false,
    this.showHighlights = true,
  });

  final ListeningTestData test;
  final bool randomize;
  final String? customTitle;
  final bool reviewWrongAnswers;
  final bool showHighlights;

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
      Future<void>.delayed(const Duration(milliseconds: 600), () {
        if (!mounted) return;
        _goNext();
      });
    } else if (widget.reviewWrongAnswers) {
      _wrongQuestions.add(_questions[_questionIndex]);
    } else {
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
            widget.showHighlights
                ? HighlightedText(
                  text: question.question,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  highlightStyle: const TextStyle(
                    color: Colors.black,
                    backgroundColor: Color(0xFFFFEB3B),
                    fontWeight: FontWeight.bold,
                  ),
                )
                : Text(
                  question.question,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
            const SizedBox(height: 16),
            for (final option in attempt.options)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CheckboxListTile(
                  value: _selectedAnswer == option,
                  onChanged: _answered ? null : (_) => _chooseAnswer(option),
                  title: Text(
                    option,
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
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
