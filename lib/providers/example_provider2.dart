import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'example_provider2.g.dart';

@riverpod
class ControllerProvider extends _$ControllerProvider {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}
