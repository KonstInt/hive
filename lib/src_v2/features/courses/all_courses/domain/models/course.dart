import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

@immutable
class ShortCourse extends Equatable {
  final String id;
  final String title;
  final List<String> tags;
  final String shortDescription;
  final int maxPoints;
  final bool isEnrolled;
  final String? imageUrl;

  const ShortCourse({
    required this.id,
    required this.title,
    required this.tags,
    required this.shortDescription,
    required this.maxPoints,
    required this.isEnrolled,
    this.imageUrl,
  });

  @override
  List<Object?> get props =>
      [id, title, tags, shortDescription, maxPoints, isEnrolled, imageUrl];
}
