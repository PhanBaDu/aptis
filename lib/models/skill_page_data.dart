import 'package:flutter/material.dart';

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
