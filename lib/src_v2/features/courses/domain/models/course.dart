import 'package:flutter/foundation.dart';

@immutable
class Course {
  final String id;
  final String title;
  final List<String> tags;
  final String shortDescription;
  final int maxPoints;
  final List<String> testIds;
  final bool isEnrolled;

  const Course({
    required this.id,
    required this.title,
    required this.tags,
    required this.shortDescription,
    required this.maxPoints,
    required this.testIds,
    required this.isEnrolled,
  });

  Course copyWith({
    String? id,
    String? title,
    List<String>? tags,
    String? shortDescription,
    int? maxPoints,
    List<String>? testIds,
    bool? isEnrolled,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      tags: tags ?? this.tags,
      shortDescription: shortDescription ?? this.shortDescription,
      maxPoints: maxPoints ?? this.maxPoints,
      testIds: testIds ?? this.testIds,
      isEnrolled: isEnrolled ?? this.isEnrolled,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Course &&
        other.id == id &&
        other.title == title &&
        listEquals(other.tags, tags) &&
        other.shortDescription == shortDescription &&
        other.maxPoints == maxPoints &&
        listEquals(other.testIds, testIds) &&
        other.isEnrolled == isEnrolled;
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      title,
      Object.hashAll(tags),
      shortDescription,
      maxPoints,
      Object.hashAll(testIds),
      isEnrolled,
    );
  }
}
