import 'package:flutter/material.dart';
import '../../domain/models/full_course_model.dart';

class FullCourseSliverAppBar extends StatelessWidget {
  final FullCourseModel course;

  const FullCourseSliverAppBar({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = course.imageUrl != null && course.imageUrl!.isNotEmpty;

    return SliverAppBar(
      expandedHeight: 280,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        title: Text(
          course.title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
                shadows: const [
                  Shadow(blurRadius: 4, color: Colors.black87, offset: Offset(1, 1))
                ],
              ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        background: hasImage
            ? Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    course.imageUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              )
            : Container(
                color: Theme.of(context).colorScheme.primary,
                child: Center(
                  child: Icon(
                    Icons.school,
                    color: Colors.white.withOpacity(0.7),
                    size: 64,
                  ),
                ),
              ),
      ),
    );
  }
}
