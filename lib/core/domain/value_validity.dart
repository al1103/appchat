import 'package:messanger/core/domain/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_validity.freezed.dart';

@freezed
abstract class ValueValidity<T> with _$ValueValidity<T> {
  const factory ValueValidity.valid({required T data}) = ValidValue<T>;
  const factory ValueValidity.invalid({required ValueFailure<T> failure}) =
      InvalidValue<T>;
}
