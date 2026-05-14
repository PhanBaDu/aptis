import 'package:flutter/material.dart';
import '../listening_data.dart';
import 'listening_quiz_page.dart';
import 'listening_study_page.dart';

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

    final combinedQuestions = selectedTests
        .expand((test) => test.questions)
        .toList();

    final combinedTest = ListeningTestData(
      number: 0,
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

class ListeningThemePickerPage extends StatelessWidget {
  const ListeningThemePickerPage({super.key, this.showHighlights = true});

  final bool showHighlights;

  static const Map<String, List<String>> themes = {
    'Màu sắc': ['Red', 'Blue', 'Black', 'Green', 'White', 'Yellow', 'Color'],
    'Thời gian & Ngày': [
      'minute',
      'o\'clock',
      'past',
      'quarter',
      'half',
      'a.m',
      'p.m',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'appointment',
      'due',
    ],
    'Giá cả & Con số': [
      'pound',
      'dollar',
      '£',
      'cost',
      'price',
      'how much',
      'how many',
      'fare',
      'cheap',
      'expensive',
    ],
    'Địa điểm': [
      'Park',
      'Station',
      'University',
      'College',
      'Office',
      'Hospital',
      'Museum',
      'Library',
      'Mall',
      'Market',
      'Center',
      'Street',
      'Hotel',
      'Restaurant',
      'Cinema',
      'Cafe',
      'Library',
    ],
    'Công việc & Văn phòng': [
      'Office',
      'Meeting',
      'Colleague',
      'Manager',
      'Assignment',
      'Project',
      'Report',
      'Conference',
      'Presentation',
      'Business',
      'Client',
      'Company',
      'Work',
      'Job',
      'Interview',
      'Tutor',
      'Salary',
    ],
    'Con người & Quan hệ': [
      'Scientist',
      'Teacher',
      'Doctor',
      'Engineer',
      'Writer',
      'Chef',
      'Artist',
      'Student',
      'Friend',
      'Mother',
      'Daughter',
      'Sister',
      'Uncle',
      'Assistant',
      'Babysitter',
      'Brother',
    ],
    'Hoạt động & Sở thích': [
      'Cycling',
      'Walking',
      'Picnic',
      'Running',
      'Hiking',
      'Camping',
      'Swimming',
      'Football',
      'Golf',
      'Dancing',
      'Reading',
      'Shopping',
      'Photography',
      'Painting',
      'Drawing',
    ],
    'Đồ vật & Thiết bị': [
      'Computer',
      'Laptop',
      'Phone',
      'Mobile',
      'Camera',
      'Television',
      'Radio',
      'Furniture',
      'Table',
      'Chair',
      'Window',
      'Bag',
      'Wallet',
      'Key',
      'Glasses',
    ],
  };

  void _startThemeTest(BuildContext context, String themeName, List<String> keywords) {
    final questions = <ListeningQuestionData>[];

    for (final test in listeningTests) {
      for (final q in test.questions) {
        final allText = (q.question + q.options.join(' ')).toLowerCase();
        if (keywords.any((kw) => allText.contains(kw.toLowerCase()))) {
          questions.add(q);
        }
      }
    }

    if (showHighlights) {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder:
              (context) => ListeningThemeStudyPage(
                themeName: themeName,
                questions: questions,
              ),
        ),
      );
    } else {
      final themeTest = ListeningTestData(number: 0, questions: questions);
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder:
              (context) => ListeningQuizPage(
                test: themeTest,
                randomize: true,
                customTitle: 'Chủ đề: $themeName (Kiểm tra)',
                showHighlights: false,
              ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Luyện theo chủ đề')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
        children: [
          Text(
            'Chọn một nhóm các câu hỏi có kiểu đáp án hoặc từ khóa tương tự nhau.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 20),
          for (final entry in themes.entries)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                child: ListTile(
                  title: Text(
                    entry.key,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Từ khóa: ${entry.value.take(5).join(", ")}...'),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () => _startThemeTest(context, entry.key, entry.value),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
