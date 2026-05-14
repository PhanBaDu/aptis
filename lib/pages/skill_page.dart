import 'package:flutter/material.dart';
import '../models/skill_page_data.dart';
import '../widgets/skill_header.dart';
import '../widgets/practice_card.dart';

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
