import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/di/scope_holder.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class DigitalInkProvider extends StatefulWidget {
  final Widget child;
  const DigitalInkProvider({
    required this.child,
    super.key,
  });

  @override
  State<DigitalInkProvider> createState() => _DigitalInkProviderState();
}

class _DigitalInkProviderState extends State<DigitalInkProvider> {
  late final DigitalInkScopeHolder _scopeHolder;

  @override
  void initState() {
    super.initState();
    _scopeHolder = DigitalInkScopeHolder();
    _scopeHolder.create();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider(
      holder: _scopeHolder,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _scopeHolder.drop();
    super.dispose();
  }
}
