import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:suitmedia_km5_test/presentation/first_page/first_page_state.dart';

part 'first_page_notifier.g.dart';

@riverpod
class FirstPageNotifier extends _$FirstPageNotifier {
  @override
  FirstPageState build() {
    return FirstPageState(
      nameController: TextEditingController(),
    );
  }

  void onCheck() {
    final text = state.nameController.text.replaceAll(' ', '');
    final reversedText = text.split('').reversed.join();
    state = state.copyWith(
      isPalindrome: text == reversedText,
    );
  }
}
