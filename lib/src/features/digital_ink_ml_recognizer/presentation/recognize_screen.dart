import 'package:flutter/material.dart' hide Ink;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/bloc/ml_recognizer/bloc_digital_ink_ml_recognizer_bloc.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/enums/languages_digital_ink_enum.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/presentation/digital_ink_result_selection_screen.dart';

class RecognizeScreen extends StatelessWidget {
  const RecognizeScreen(
      {super.key, required this.data, required this.language});
  final Ink data;
  final LanguagesDigitalInlEnum language;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<BlocDigitalInkMlRecognizerBloc>()
        ..add(
          BlocDigitalInkMlRecognizerEvent.recognize(
              data: data, language: language),
        ),
      child: BlocConsumer<BlocDigitalInkMlRecognizerBloc,
          BlocDigitalInkMlRecognizerState>(
        listener: (context, state) {
          state.mapOrNull(
              // loaded: (value) {
              //   showDialog(
              //       context: context,
              //       builder: (BuildContext context) {
              //         return DigitalInkResultSelectionScreen(
              //             results: value.results);
              //       });
              // },
              );
        },
        builder: (context, state) {
          return PopScope(
            onPopInvoked: (didPop) => false,
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              content: state.map(
                initial: (_) => Container(),
                loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (state) => Center(
                  child: Text(state.errorStr),
                ),
                loaded: (state) =>
                    DigitalInkResultSelectionScreen(results: state.results),
              ),
            ),
          );
        },
      ),
    );
  }
}
