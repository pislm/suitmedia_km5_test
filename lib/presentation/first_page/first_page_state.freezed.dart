// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirstPageState {
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  bool? get isPalindrome => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirstPageStateCopyWith<FirstPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstPageStateCopyWith<$Res> {
  factory $FirstPageStateCopyWith(
          FirstPageState value, $Res Function(FirstPageState) then) =
      _$FirstPageStateCopyWithImpl<$Res, FirstPageState>;
  @useResult
  $Res call({TextEditingController nameController, bool? isPalindrome});
}

/// @nodoc
class _$FirstPageStateCopyWithImpl<$Res, $Val extends FirstPageState>
    implements $FirstPageStateCopyWith<$Res> {
  _$FirstPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameController = null,
    Object? isPalindrome = freezed,
  }) {
    return _then(_value.copyWith(
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isPalindrome: freezed == isPalindrome
          ? _value.isPalindrome
          : isPalindrome // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirstPageStateCopyWith<$Res>
    implements $FirstPageStateCopyWith<$Res> {
  factory _$$_FirstPageStateCopyWith(
          _$_FirstPageState value, $Res Function(_$_FirstPageState) then) =
      __$$_FirstPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController nameController, bool? isPalindrome});
}

/// @nodoc
class __$$_FirstPageStateCopyWithImpl<$Res>
    extends _$FirstPageStateCopyWithImpl<$Res, _$_FirstPageState>
    implements _$$_FirstPageStateCopyWith<$Res> {
  __$$_FirstPageStateCopyWithImpl(
      _$_FirstPageState _value, $Res Function(_$_FirstPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameController = null,
    Object? isPalindrome = freezed,
  }) {
    return _then(_$_FirstPageState(
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isPalindrome: freezed == isPalindrome
          ? _value.isPalindrome
          : isPalindrome // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FirstPageState implements _FirstPageState {
  const _$_FirstPageState({required this.nameController, this.isPalindrome});

  @override
  final TextEditingController nameController;
  @override
  final bool? isPalindrome;

  @override
  String toString() {
    return 'FirstPageState(nameController: $nameController, isPalindrome: $isPalindrome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstPageState &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.isPalindrome, isPalindrome) ||
                other.isPalindrome == isPalindrome));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameController, isPalindrome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstPageStateCopyWith<_$_FirstPageState> get copyWith =>
      __$$_FirstPageStateCopyWithImpl<_$_FirstPageState>(this, _$identity);
}

abstract class _FirstPageState implements FirstPageState {
  const factory _FirstPageState(
      {required final TextEditingController nameController,
      final bool? isPalindrome}) = _$_FirstPageState;

  @override
  TextEditingController get nameController;
  @override
  bool? get isPalindrome;
  @override
  @JsonKey(ignore: true)
  _$$_FirstPageStateCopyWith<_$_FirstPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
