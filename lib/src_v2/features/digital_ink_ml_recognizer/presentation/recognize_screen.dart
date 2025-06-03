import 'package:flutter/material.dart' hide Ink;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/di/digital_ink_provider.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/di/scope_holder.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/domain/bloc/ml_recognizer/bloc_digital_ink_ml_recognizer_bloc.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/domain/models/enums/languages_digital_ink_enum.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class RecognizeScreen extends StatelessWidget {
  final Ink data;
  final LanguagesDigitalInlEnum language;
  final Function(String)? onResultSelected;

  const RecognizeScreen({
    super.key,
    required this.data,
    required this.language,
    this.onResultSelected,
  });

  @override
  Widget build(BuildContext context) {
    return DigitalInkProvider(
      child: ScopeBuilder<DigitalInkContainer>.withPlaceholder(
          builder: (context, scope) {
        return BlocProvider(
          create: (context) => scope.digitalInkRecognizerBloc.get
            ..add(
              BlocDigitalInkMlRecognizerEvent.recognize(
                data: data,
                language: language,
              ),
            ),
          child: BlocConsumer<BlocDigitalInkMlRecognizerBloc,
              BlocDigitalInkMlRecognizerState>(
            listener: (context, state) {
              state.mapOrNull(
                loaded: (value) {
                  if (value.results.isNotEmpty && onResultSelected != null) {
                    onResultSelected!(value.results.first);
                  }
                },
              );
            },
            builder: (context, state) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Распознанный текст',
                        style: context.textStyles.title2M,
                      ),
                      const SizedBox(height: 16),
                      state.map(
                        initial: (_) => const SizedBox(),
                        loading: (_) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: (state) => Center(
                          child: Text(
                            state.errorStr,
                            style: context.textStyles.bodyM.copyWith(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        loaded: (state) => Column(
                          children: state.results.map((result) {
                            return ListTile(
                              title: Text(
                                result,
                                style: context.textStyles.bodyM,
                              ),
                              onTap: () {
                                if (onResultSelected != null) {
                                  onResultSelected!(result);
                                }
                                Navigator.of(context).pop(result);
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(
                              'Отмена',
                              style: context.textStyles.bodyB?.copyWith(
                                color: context.colors.baseText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
