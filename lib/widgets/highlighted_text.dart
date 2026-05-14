import 'package:flutter/material.dart';

class HighlightedText extends StatelessWidget {
  const HighlightedText({
    super.key,
    required this.text,
    required this.style,
    required this.highlightStyle,
  });

  final String text;
  final TextStyle? style;
  final TextStyle highlightStyle;

  static final List<String> _keywords = [
    // Question words
    'how much', 'what time', 'where', 'who', 'why', 'when', 'how many',
    'which', 'what color', 'what did', 'what does', 'what is',
    // Key verbs & nouns
    'cost', 'price', 'meet', 'meeting', 'buy', 'bought', 'sell', 'sold',
    'location', 'address', 'phone', 'number', 'time', 'date', 'day',
    'color', 'name', 'reason', 'purpose', 'encouraged', 'decide',
    'change', 'lose', 'lost', 'depart', 'arrive', 'leave', 'stay',
    'original', 'largest', 'smallest', 'best', 'worst', 'favorite',
    // Specific nouns from themes
    'office', 'manager', 'colleague', 'assignment', 'report', 'client',
    'car', 'bus', 'train', 'flight', 'station', 'park', 'university',
    'school', 'hospital', 'museum', 'hotel', 'restaurant', 'market',
    'red', 'blue', 'black', 'green', 'white', 'yellow',
    'pounds', 'dollars', 'minutes', 'hours', 'o\'clock',
    'cycling', 'walking', 'running', 'swimming', 'football',
  ];

  @override
  Widget build(BuildContext context) {
    if (_keywords.isEmpty) return Text(text, style: style);

    final pattern = _keywords.map(RegExp.escape).join('|');
    final regex = RegExp(pattern, caseSensitive: false);
    final matches = regex.allMatches(text).toList();

    if (matches.isEmpty) return Text(text, style: style);

    final spans = <TextSpan>[];
    int start = 0;

    for (final match in matches) {
      if (match.start > start) {
        spans.add(TextSpan(text: text.substring(start, match.start)));
      }
      spans.add(
        TextSpan(
          text: text.substring(match.start, match.end),
          style: highlightStyle,
        ),
      );
      start = match.end;
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start)));
    }

    return RichText(text: TextSpan(style: style, children: spans));
  }
}
