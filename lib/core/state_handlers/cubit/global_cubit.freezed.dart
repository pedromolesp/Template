// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GlobalState {
  GlobalThemeMode get themeMode;
  Locale get locale;

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GlobalStateCopyWith<GlobalState> get copyWith =>
      _$GlobalStateCopyWithImpl<GlobalState>(this as GlobalState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GlobalState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, locale);

  @override
  String toString() {
    return 'GlobalState(themeMode: $themeMode, locale: $locale)';
  }
}

/// @nodoc
abstract mixin class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) _then) =
      _$GlobalStateCopyWithImpl;
  @useResult
  $Res call({GlobalThemeMode themeMode, Locale locale});
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res> implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._self, this._then);

  final GlobalState _self;
  final $Res Function(GlobalState) _then;

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? locale = null,
  }) {
    return _then(_self.copyWith(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as GlobalThemeMode,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// Adds pattern-matching-related methods to [GlobalState].
extension GlobalStatePatterns on GlobalState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GlobalState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GlobalState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GlobalState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GlobalState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(GlobalThemeMode themeMode, Locale locale)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GlobalState() when $default != null:
        return $default(_that.themeMode, _that.locale);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(GlobalThemeMode themeMode, Locale locale) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalState():
        return $default(_that.themeMode, _that.locale);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(GlobalThemeMode themeMode, Locale locale)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalState() when $default != null:
        return $default(_that.themeMode, _that.locale);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GlobalState implements GlobalState {
  const _GlobalState({required this.themeMode, required this.locale});

  @override
  final GlobalThemeMode themeMode;
  @override
  final Locale locale;

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GlobalStateCopyWith<_GlobalState> get copyWith =>
      __$GlobalStateCopyWithImpl<_GlobalState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GlobalState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, locale);

  @override
  String toString() {
    return 'GlobalState(themeMode: $themeMode, locale: $locale)';
  }
}

/// @nodoc
abstract mixin class _$GlobalStateCopyWith<$Res>
    implements $GlobalStateCopyWith<$Res> {
  factory _$GlobalStateCopyWith(
          _GlobalState value, $Res Function(_GlobalState) _then) =
      __$GlobalStateCopyWithImpl;
  @override
  @useResult
  $Res call({GlobalThemeMode themeMode, Locale locale});
}

/// @nodoc
class __$GlobalStateCopyWithImpl<$Res> implements _$GlobalStateCopyWith<$Res> {
  __$GlobalStateCopyWithImpl(this._self, this._then);

  final _GlobalState _self;
  final $Res Function(_GlobalState) _then;

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
    Object? locale = null,
  }) {
    return _then(_GlobalState(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as GlobalThemeMode,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

// dart format on
