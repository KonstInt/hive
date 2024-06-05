import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleQuizWidget extends StatefulWidget {
  final List<Widget> options;
  final int correctIndex;
  final Function({required int selectedIndex}) callback;

  const SingleQuizWidget({
    super.key,
    required this.options,
    required this.correctIndex,
    required this.callback,
  });

  @override
  State<SingleQuizWidget> createState() => _SingleQuizWidgetState();
}

class _SingleQuizWidgetState extends State<SingleQuizWidget>
    with SingleTickerProviderStateMixin {
  int? selectedOption;
  bool isCorrect = false;
  bool hasSelected = false;
  late AnimationController _controller;
  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _shakeAnimation = Tween<double>(begin: 0, end: 10)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onOptionSelected(int index) {
    if (hasSelected) return;

    setState(() {
      selectedOption = index;
      isCorrect = index == widget.correctIndex;
      hasSelected = true;
    });

    if (!isCorrect) {
      _controller.forward();
    }

    widget.callback(selectedIndex: index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.asMap().entries.map((entry) {
        int index = entry.key;
        Widget option = entry.value;

        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w ),
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double offset = selectedOption == index && !isCorrect
                  ? _shakeAnimation.value
                  : 0;

              ColorFilter colorFilter;

              if (selectedOption == index) {
                colorFilter = isCorrect
                    ? ColorFilter.mode(
                        Colors.green.withOpacity(0.3), BlendMode.srcATop)
                    : ColorFilter.mode(
                        Colors.red.withOpacity(0.3), BlendMode.srcATop);
              } else {
                colorFilter = const ColorFilter.mode(
                    Colors.transparent, BlendMode.multiply);
              }

              return Transform.translate(
                offset: Offset(offset, 0),
                child: InkWell(
                  onTap: () => _onOptionSelected(index),
                  child: ColorFiltered(
                    colorFilter: colorFilter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: selectedOption == index
                              ? (isCorrect ? Colors.green : Colors.red)
                              : Colors.grey,
                        ),
                      ),
                      child: ListTile(
                        title: option,
                        trailing: selectedOption == index
                            ? (isCorrect
                                ? const Icon(Icons.check_circle,
                                    color: Colors.green)
                                : const Icon(Icons.cancel, color: Colors.red))
                            : null,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }).toList(),
    );
  }
}
