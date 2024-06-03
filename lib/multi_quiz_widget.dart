import 'package:flutter/material.dart';

class MultiQuizWidget extends StatefulWidget {
  final List<Widget> options;
  final List<int> correctIndexes;
  final Function({required List<int> selectedIndexes}) callback;

  const MultiQuizWidget({
    super.key,
    required this.options,
    required this.correctIndexes,
    required this.callback,
  });

  @override
  State<MultiQuizWidget> createState() => _MultiQuizWidgetState();
}

class _MultiQuizWidgetState extends State<MultiQuizWidget>
    with SingleTickerProviderStateMixin {
  List<int> selectedOptions = [];
  bool showResults = false;
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

  void _onConfirm() {
    bool isCorrect =
        selectedOptions.toSet().containsAll(widget.correctIndexes) &&
            widget.correctIndexes.toSet().containsAll(selectedOptions);
    if (!isCorrect) {
      _controller.forward();
    }
    setState(() {
      showResults = true;
    });
    widget.callback(selectedIndexes: selectedOptions);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.options.asMap().entries.map((entry) {
          int index = entry.key;
          Widget option = entry.value;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                double offset = showResults &&
                        !widget.correctIndexes.contains(index) &&
                        selectedOptions.contains(index)
                    ? _shakeAnimation.value
                    : 0;

                ColorFilter colorFilter;
                if (showResults) {
                  if (selectedOptions.contains(index)) {
                    colorFilter = widget.correctIndexes.contains(index)
                        ? ColorFilter.mode(
                            Colors.green.withOpacity(0.3), BlendMode.srcATop)
                        : ColorFilter.mode(
                            Colors.red.withOpacity(0.3), BlendMode.srcATop);
                  } else {
                    colorFilter = const ColorFilter.mode(
                        Colors.transparent, BlendMode.multiply);
                  }
                } else {
                  colorFilter = selectedOptions.contains(index)
                      ? ColorFilter.mode(
                          Colors.grey.withOpacity(0.3), BlendMode.srcATop)
                      : const ColorFilter.mode(
                          Colors.transparent, BlendMode.multiply);
                }

                return Transform.translate(
                  offset: Offset(offset, 0),
                  child: InkWell(
                    onTap: showResults
                        ? null
                        : () {
                            setState(() {
                              if (selectedOptions.contains(index)) {
                                selectedOptions.remove(index);
                              } else {
                                selectedOptions.add(index);
                              }
                            });
                          },
                    child: ColorFiltered(
                      colorFilter: colorFilter,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color:
                                showResults && selectedOptions.contains(index)
                                    ? (widget.correctIndexes.contains(index)
                                        ? Colors.green
                                        : Colors.red)
                                    : Colors.grey,
                          ),
                        ),
                        child: ListTile(
                          title: option,
                          leading: Checkbox(
                            value: selectedOptions.contains(index),
                            onChanged: showResults
                                ? null
                                : (bool? value) {
                                    setState(() {
                                      if (value == true) {
                                        selectedOptions.add(index);
                                      } else {
                                        selectedOptions.remove(index);
                                      }
                                    });
                                  },
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ElevatedButton(
            onPressed: _onConfirm,
            child: const Text('Confirm'),
          ),
        ),
      ],
    );
  }
}
