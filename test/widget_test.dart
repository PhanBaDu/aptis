import 'package:flutter_test/flutter_test.dart';

import 'package:aptis/main.dart';

void main() {
  testWidgets('shows Listening practice modes and other skill pages', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const AptisApp());

    expect(find.text('My Aptis English'), findsOneWidget);
    expect(find.text('Listening'), findsWidgets);
    expect(find.text('Reading'), findsOneWidget);
    expect(find.text('Writing'), findsOneWidget);
    expect(find.text('Speaking'), findsOneWidget);
    expect(find.text('Đáp án'), findsOneWidget);
    expect(find.text('Random đề'), findsOneWidget);
    expect(find.text('Không random, theo thứ tự'), findsOneWidget);

    await tester.tap(find.text('Đáp án'));
    await tester.pumpAndSettle();
    expect(find.text('3250 pounds'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Random đề'));
    await tester.pumpAndSettle();
    expect(find.text('Test 1'), findsOneWidget);

    await tester.tap(find.text('Test 1'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Câu 1/13'), findsOneWidget);
    expect(find.text('Đi tiếp'), findsNothing);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Không random, theo thứ tự'));
    await tester.pumpAndSettle();
    expect(find.text('Test 1'), findsOneWidget);

    await tester.tap(find.text('Test 1'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Câu 1/13'), findsOneWidget);

    await tester.tap(find.text('3250 pounds'));
    await tester.pumpAndSettle();
    expect(find.text('Đúng'), findsOneWidget);
    expect(find.textContaining('Đáp án:'), findsOneWidget);
    expect(find.text('Đi tiếp'), findsOneWidget);

    await tester.tap(find.text('Đi tiếp'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Câu 2/13'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Test 1'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Câu 1/13'), findsOneWidget);

    await tester.tap(find.text('3550 pounds'));
    await tester.pump();
    expect(find.text('Sai'), findsOneWidget);
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(find.textContaining('Câu 1/13'), findsOneWidget);
    expect(find.text('Sai'), findsNothing);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Reading'));
    await tester.pumpAndSettle();

    expect(
      find.text('Đọc nhanh để lấy ý, đọc chậm để sửa bẫy từ vựng.'),
      findsOneWidget,
    );
    expect(
      find.text('2 passage ngắn + review toàn bộ câu sai'),
      findsOneWidget,
    );
  });
}
