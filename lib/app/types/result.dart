sealed class Result<E, T> {
  R match<R>({
    required R Function(E) onError,
    required R Function(T) onValue,
  }) =>
      switch (this) {
        Failure(error: final error) => onError(error),
        Success(value: final value) => onValue(value),
      };

  T onError(T Function(E) onError) => switch (this) {
        Failure(error: final error) => onError(error),
        Success(value: final value) => value,
      };

  T assertErrors() => switch (this) {
        Failure(error: final error) =>
          throw StateError("Result type had an error value: $error"),
        Success(value: final value) => value,
      };
}

class Failure<E, T> extends Result<E, T> {
  final E error;
  Failure(this.error);
}

class Success<E, T> extends Result<E, T> {
  final T value;
  Success(this.value);
}

final class Unit {
  const Unit._();
}

const unit = Unit._();
