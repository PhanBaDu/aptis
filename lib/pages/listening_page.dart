import 'package:flutter/material.dart';
import '../listening_data.dart';
import '../models/skill_page_data.dart';
import '../widgets/skill_header.dart';
import '../widgets/listening_mode_button.dart';
import 'listening_answers_page.dart';
import 'listening_picker_pages.dart';
import 'listening_1617_picker_page.dart';

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
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'Luyện theo chủ đề đáp án',
          description:
              'Gộp những câu có đáp án giống kiểu nhau (Màu sắc, Thời gian, Giá cả...) để luyện phản xạ.',
          icon: Icons.category_rounded,
          color: data.color,
          page: const ListeningThemePickerPage(),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'Luyện tập (Không Highlight)',
          description:
              'Kiểm tra khả năng nhận diện keyword của bạn mà không có sự trợ giúp của màu sắc.',
          icon: Icons.visibility_off_rounded,
          color: data.color,
          page: const ListeningThemePickerPage(showHighlights: false),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'PHẦN 16',
          description: 'Nghe đoạn văn dài và trả lời 2 câu hỏi liên quan.',
          icon: Icons.filter_1_rounded,
          color: data.color,
          page: const ListeningPart1617PickerPage(partNumber: '16'),
        ),
        const SizedBox(height: 12),
        ListeningModeButton(
          title: 'PHẦN 17',
          description: 'Nghe bài nói phức tạp và trả lời 2 câu hỏi trắc nghiệm.',
          icon: Icons.filter_2_rounded,
          color: data.color,
          page: const ListeningPart1617PickerPage(partNumber: '17'),
        ),
      ],
    );
  }
}
