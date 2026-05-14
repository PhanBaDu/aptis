import '../listening_data.dart';

class ListeningQuestionAttempt {
  const ListeningQuestionAttempt({
    required this.question,
    required this.options,
  });

  final ListeningQuestionData question;
  final List<String> options;
}
