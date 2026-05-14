import 'package:flutter/material.dart';
import '../reading_data.dart';
import '../reading_part1_data.dart';
import '../reading_part4_data.dart';
import '../reading_part5_data.dart';

class ReadingAnswersPage extends StatefulWidget {
  const ReadingAnswersPage({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  State<ReadingAnswersPage> createState() => _ReadingAnswersPageState();
}

class _ReadingAnswersPageState extends State<ReadingAnswersPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đáp án Reading'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'PART 1'),
            Tab(text: 'PART 2 & 3'),
            Tab(text: 'PART 4'),
            Tab(text: 'PART 5'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildPart1Answers(),
          _buildPart23Answers(),
          _buildPart4Answers(),
          _buildPart5Answers(),
        ],
      ),
    );
  }

  Widget _buildPart1Answers() {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: readingPart1Topics.length,
      separatorBuilder: (context, index) => const Divider(height: 32),
      itemBuilder: (context, index) {
        final topic = readingPart1Topics[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CÂU ${topic.id}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: topic.answers.map((ans) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2)),
                ),
                child: Text(
                  ans,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )).toList(),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPart23Answers() {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: readingTopics.length,
      separatorBuilder: (context, index) => const Divider(height: 32),
      itemBuilder: (context, index) {
        final topic = readingTopics[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'TOPIC ${topic.id}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    topic.title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              topic.keyPoints,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                height: 1.5,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPart4Answers() {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: readingPart4Topics.length,
      separatorBuilder: (context, index) => const Divider(height: 32),
      itemBuilder: (context, index) {
        final topic = readingPart4Topics[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TOPIC ${topic.id}${topic.version != null ? ' (${topic.version})' : ''}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              topic.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 8,
              children: List.generate(topic.questions.length, (qIndex) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('${qIndex + 1}: ', style: const TextStyle(fontSize: 12)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        topic.questions[qIndex].answer,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPart5Answers() {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: readingPart5Topics.length,
      separatorBuilder: (context, index) => const Divider(height: 32),
      itemBuilder: (context, index) {
        final topic = readingPart5Topics[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TOPIC ${index + 1}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              topic.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Key Notes:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    topic.keyNotes,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const Divider(height: 20),
                  const Text(
                    'Mẹo nhớ (Mnemonic Tip):',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    topic.mnemonicTip,
                    style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
