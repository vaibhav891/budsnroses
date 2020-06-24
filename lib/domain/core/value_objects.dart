
import 'package:budsnroses/domain/core/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  T getOrCrash(){
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  String toString() => 'ValueObjects(value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
