class CourseModel {
  final String id;
  final String title;
  final List<String> tags;
  final String shortDescription;
  final double progressPercentage;
  final int currentPoints;
  final int maxPoints;

  const CourseModel({
    required this.id,
    required this.title,
    required this.tags,
    required this.shortDescription,
    required this.progressPercentage,
    required this.currentPoints,
    required this.maxPoints,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'tags': tags,
        'shortDescription': shortDescription,
        'progressPercentage': progressPercentage,
        'currentPoints': currentPoints,
        'maxPoints': maxPoints,
      };

  factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
        id: json['id'] as String,
        title: json['title'] as String,
        tags: List<String>.from(json['tags'] as List),
        shortDescription: json['shortDescription'] as String,
        progressPercentage: (json['progressPercentage'] as num).toDouble(),
        currentPoints: json['currentPoints'] as int,
        maxPoints: json['maxPoints'] as int,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          tags == other.tags &&
          shortDescription == other.shortDescription &&
          progressPercentage == other.progressPercentage &&
          currentPoints == other.currentPoints &&
          maxPoints == other.maxPoints;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      tags.hashCode ^
      shortDescription.hashCode ^
      progressPercentage.hashCode ^
      currentPoints.hashCode ^
      maxPoints.hashCode;
}
