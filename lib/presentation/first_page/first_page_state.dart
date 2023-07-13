import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_page_state.freezed.dart';

@freezed
class FirstPageState with _$FirstPageState {
  const factory FirstPageState({
    required TextEditingController nameController,
    bool? isPalindrome,
  }) = _FirstPageState;
}
