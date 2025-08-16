// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monaco_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Position {
  int get line;
  int get column;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PositionCopyWith<Position> get copyWith =>
      _$PositionCopyWithImpl<Position>(this as Position, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Position &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, line, column);

  @override
  String toString() {
    return 'Position(line: $line, column: $column)';
  }
}

/// @nodoc
abstract mixin class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) _then) =
      _$PositionCopyWithImpl;
  @useResult
  $Res call({int line, int column});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._self, this._then);

  final Position _self;
  final $Res Function(Position) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? column = null,
  }) {
    return _then(_self.copyWith(
      line: null == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Position].
extension PositionPatterns on Position {
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
    TResult Function(_Position value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
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
    TResult Function(_Position value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position():
        return $default(_that);
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
    TResult? Function(_Position value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
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
    TResult Function(int line, int column)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
        return $default(_that.line, _that.column);
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
    TResult Function(int line, int column) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position():
        return $default(_that.line, _that.column);
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
    TResult? Function(int line, int column)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Position() when $default != null:
        return $default(_that.line, _that.column);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Position extends Position {
  const _Position({required this.line, required this.column}) : super._();

  @override
  final int line;
  @override
  final int column;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Position &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, line, column);

  @override
  String toString() {
    return 'Position(line: $line, column: $column)';
  }
}

/// @nodoc
abstract mixin class _$PositionCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) _then) =
      __$PositionCopyWithImpl;
  @override
  @useResult
  $Res call({int line, int column});
}

/// @nodoc
class __$PositionCopyWithImpl<$Res> implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(this._self, this._then);

  final _Position _self;
  final $Res Function(_Position) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? line = null,
    Object? column = null,
  }) {
    return _then(_Position(
      line: null == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$Range {
  int get startLine;
  int get startColumn;
  int get endLine;
  int get endColumn;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RangeCopyWith<Range> get copyWith =>
      _$RangeCopyWithImpl<Range>(this as Range, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Range &&
            (identical(other.startLine, startLine) ||
                other.startLine == startLine) &&
            (identical(other.startColumn, startColumn) ||
                other.startColumn == startColumn) &&
            (identical(other.endLine, endLine) || other.endLine == endLine) &&
            (identical(other.endColumn, endColumn) ||
                other.endColumn == endColumn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startLine, startColumn, endLine, endColumn);

  @override
  String toString() {
    return 'Range(startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn)';
  }
}

/// @nodoc
abstract mixin class $RangeCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) _then) =
      _$RangeCopyWithImpl;
  @useResult
  $Res call({int startLine, int startColumn, int endLine, int endColumn});
}

/// @nodoc
class _$RangeCopyWithImpl<$Res> implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._self, this._then);

  final Range _self;
  final $Res Function(Range) _then;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLine = null,
    Object? startColumn = null,
    Object? endLine = null,
    Object? endColumn = null,
  }) {
    return _then(_self.copyWith(
      startLine: null == startLine
          ? _self.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: null == startColumn
          ? _self.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: null == endLine
          ? _self.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: null == endColumn
          ? _self.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Range].
extension RangePatterns on Range {
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
    TResult Function(_Range value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
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
    TResult Function(_Range value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range():
        return $default(_that);
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
    TResult? Function(_Range value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
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
    TResult Function(
            int startLine, int startColumn, int endLine, int endColumn)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
        return $default(
            _that.startLine, _that.startColumn, _that.endLine, _that.endColumn);
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
    TResult Function(int startLine, int startColumn, int endLine, int endColumn)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range():
        return $default(
            _that.startLine, _that.startColumn, _that.endLine, _that.endColumn);
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
    TResult? Function(
            int startLine, int startColumn, int endLine, int endColumn)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Range() when $default != null:
        return $default(
            _that.startLine, _that.startColumn, _that.endLine, _that.endColumn);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Range extends Range {
  const _Range(
      {required this.startLine,
      required this.startColumn,
      required this.endLine,
      required this.endColumn})
      : super._();

  @override
  final int startLine;
  @override
  final int startColumn;
  @override
  final int endLine;
  @override
  final int endColumn;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RangeCopyWith<_Range> get copyWith =>
      __$RangeCopyWithImpl<_Range>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Range &&
            (identical(other.startLine, startLine) ||
                other.startLine == startLine) &&
            (identical(other.startColumn, startColumn) ||
                other.startColumn == startColumn) &&
            (identical(other.endLine, endLine) || other.endLine == endLine) &&
            (identical(other.endColumn, endColumn) ||
                other.endColumn == endColumn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startLine, startColumn, endLine, endColumn);

  @override
  String toString() {
    return 'Range(startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn)';
  }
}

/// @nodoc
abstract mixin class _$RangeCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$RangeCopyWith(_Range value, $Res Function(_Range) _then) =
      __$RangeCopyWithImpl;
  @override
  @useResult
  $Res call({int startLine, int startColumn, int endLine, int endColumn});
}

/// @nodoc
class __$RangeCopyWithImpl<$Res> implements _$RangeCopyWith<$Res> {
  __$RangeCopyWithImpl(this._self, this._then);

  final _Range _self;
  final $Res Function(_Range) _then;

  /// Create a copy of Range
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startLine = null,
    Object? startColumn = null,
    Object? endLine = null,
    Object? endColumn = null,
  }) {
    return _then(_Range(
      startLine: null == startLine
          ? _self.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: null == startColumn
          ? _self.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: null == endLine
          ? _self.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: null == endColumn
          ? _self.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$MarkerData {
  Range get range;
  String get message;
  MarkerSeverity get severity;
  String? get code;
  String? get source;
  List<String>? get tags;
  List<RelatedInformation>? get relatedInformation;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkerDataCopyWith<MarkerData> get copyWith =>
      _$MarkerDataCopyWithImpl<MarkerData>(this as MarkerData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkerData &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.relatedInformation, relatedInformation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      range,
      message,
      severity,
      code,
      source,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(relatedInformation));

  @override
  String toString() {
    return 'MarkerData(range: $range, message: $message, severity: $severity, code: $code, source: $source, tags: $tags, relatedInformation: $relatedInformation)';
  }
}

/// @nodoc
abstract mixin class $MarkerDataCopyWith<$Res> {
  factory $MarkerDataCopyWith(
          MarkerData value, $Res Function(MarkerData) _then) =
      _$MarkerDataCopyWithImpl;
  @useResult
  $Res call(
      {Range range,
      String message,
      MarkerSeverity severity,
      String? code,
      String? source,
      List<String>? tags,
      List<RelatedInformation>? relatedInformation});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$MarkerDataCopyWithImpl<$Res> implements $MarkerDataCopyWith<$Res> {
  _$MarkerDataCopyWithImpl(this._self, this._then);

  final MarkerData _self;
  final $Res Function(MarkerData) _then;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? message = null,
    Object? severity = null,
    Object? code = freezed,
    Object? source = freezed,
    Object? tags = freezed,
    Object? relatedInformation = freezed,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as MarkerSeverity,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      relatedInformation: freezed == relatedInformation
          ? _self.relatedInformation
          : relatedInformation // ignore: cast_nullable_to_non_nullable
              as List<RelatedInformation>?,
    ));
  }

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MarkerData].
extension MarkerDataPatterns on MarkerData {
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
    TResult Function(_MarkerData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
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
    TResult Function(_MarkerData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData():
        return $default(_that);
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
    TResult? Function(_MarkerData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
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
    TResult Function(
            Range range,
            String message,
            MarkerSeverity severity,
            String? code,
            String? source,
            List<String>? tags,
            List<RelatedInformation>? relatedInformation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
        return $default(_that.range, _that.message, _that.severity, _that.code,
            _that.source, _that.tags, _that.relatedInformation);
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
    TResult Function(
            Range range,
            String message,
            MarkerSeverity severity,
            String? code,
            String? source,
            List<String>? tags,
            List<RelatedInformation>? relatedInformation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData():
        return $default(_that.range, _that.message, _that.severity, _that.code,
            _that.source, _that.tags, _that.relatedInformation);
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
    TResult? Function(
            Range range,
            String message,
            MarkerSeverity severity,
            String? code,
            String? source,
            List<String>? tags,
            List<RelatedInformation>? relatedInformation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkerData() when $default != null:
        return $default(_that.range, _that.message, _that.severity, _that.code,
            _that.source, _that.tags, _that.relatedInformation);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MarkerData extends MarkerData {
  const _MarkerData(
      {required this.range,
      required this.message,
      this.severity = MarkerSeverity.info,
      this.code,
      this.source,
      final List<String>? tags,
      final List<RelatedInformation>? relatedInformation})
      : _tags = tags,
        _relatedInformation = relatedInformation,
        super._();

  @override
  final Range range;
  @override
  final String message;
  @override
  @JsonKey()
  final MarkerSeverity severity;
  @override
  final String? code;
  @override
  final String? source;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelatedInformation>? _relatedInformation;
  @override
  List<RelatedInformation>? get relatedInformation {
    final value = _relatedInformation;
    if (value == null) return null;
    if (_relatedInformation is EqualUnmodifiableListView)
      return _relatedInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkerDataCopyWith<_MarkerData> get copyWith =>
      __$MarkerDataCopyWithImpl<_MarkerData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkerData &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._relatedInformation, _relatedInformation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      range,
      message,
      severity,
      code,
      source,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_relatedInformation));

  @override
  String toString() {
    return 'MarkerData(range: $range, message: $message, severity: $severity, code: $code, source: $source, tags: $tags, relatedInformation: $relatedInformation)';
  }
}

/// @nodoc
abstract mixin class _$MarkerDataCopyWith<$Res>
    implements $MarkerDataCopyWith<$Res> {
  factory _$MarkerDataCopyWith(
          _MarkerData value, $Res Function(_MarkerData) _then) =
      __$MarkerDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Range range,
      String message,
      MarkerSeverity severity,
      String? code,
      String? source,
      List<String>? tags,
      List<RelatedInformation>? relatedInformation});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$MarkerDataCopyWithImpl<$Res> implements _$MarkerDataCopyWith<$Res> {
  __$MarkerDataCopyWithImpl(this._self, this._then);

  final _MarkerData _self;
  final $Res Function(_MarkerData) _then;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? message = null,
    Object? severity = null,
    Object? code = freezed,
    Object? source = freezed,
    Object? tags = freezed,
    Object? relatedInformation = freezed,
  }) {
    return _then(_MarkerData(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as MarkerSeverity,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      relatedInformation: freezed == relatedInformation
          ? _self._relatedInformation
          : relatedInformation // ignore: cast_nullable_to_non_nullable
              as List<RelatedInformation>?,
    ));
  }

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$RelatedInformation {
  Uri get resource;
  Range get range;
  String get message;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelatedInformationCopyWith<RelatedInformation> get copyWith =>
      _$RelatedInformationCopyWithImpl<RelatedInformation>(
          this as RelatedInformation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelatedInformation &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resource, range, message);

  @override
  String toString() {
    return 'RelatedInformation(resource: $resource, range: $range, message: $message)';
  }
}

/// @nodoc
abstract mixin class $RelatedInformationCopyWith<$Res> {
  factory $RelatedInformationCopyWith(
          RelatedInformation value, $Res Function(RelatedInformation) _then) =
      _$RelatedInformationCopyWithImpl;
  @useResult
  $Res call({Uri resource, Range range, String message});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$RelatedInformationCopyWithImpl<$Res>
    implements $RelatedInformationCopyWith<$Res> {
  _$RelatedInformationCopyWithImpl(this._self, this._then);

  final RelatedInformation _self;
  final $Res Function(RelatedInformation) _then;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
    Object? range = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      resource: null == resource
          ? _self.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Uri,
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RelatedInformation].
extension RelatedInformationPatterns on RelatedInformation {
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
    TResult Function(_RelatedInformation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
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
    TResult Function(_RelatedInformation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation():
        return $default(_that);
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
    TResult? Function(_RelatedInformation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
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
    TResult Function(Uri resource, Range range, String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
        return $default(_that.resource, _that.range, _that.message);
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
    TResult Function(Uri resource, Range range, String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation():
        return $default(_that.resource, _that.range, _that.message);
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
    TResult? Function(Uri resource, Range range, String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedInformation() when $default != null:
        return $default(_that.resource, _that.range, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RelatedInformation extends RelatedInformation {
  const _RelatedInformation(
      {required this.resource, required this.range, required this.message})
      : super._();

  @override
  final Uri resource;
  @override
  final Range range;
  @override
  final String message;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RelatedInformationCopyWith<_RelatedInformation> get copyWith =>
      __$RelatedInformationCopyWithImpl<_RelatedInformation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RelatedInformation &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resource, range, message);

  @override
  String toString() {
    return 'RelatedInformation(resource: $resource, range: $range, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$RelatedInformationCopyWith<$Res>
    implements $RelatedInformationCopyWith<$Res> {
  factory _$RelatedInformationCopyWith(
          _RelatedInformation value, $Res Function(_RelatedInformation) _then) =
      __$RelatedInformationCopyWithImpl;
  @override
  @useResult
  $Res call({Uri resource, Range range, String message});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$RelatedInformationCopyWithImpl<$Res>
    implements _$RelatedInformationCopyWith<$Res> {
  __$RelatedInformationCopyWithImpl(this._self, this._then);

  final _RelatedInformation _self;
  final $Res Function(_RelatedInformation) _then;

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resource = null,
    Object? range = null,
    Object? message = null,
  }) {
    return _then(_RelatedInformation(
      resource: null == resource
          ? _self.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Uri,
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RelatedInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$DecorationOptions {
  Range get range;
  Map<String, dynamic> get options;

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DecorationOptionsCopyWith<DecorationOptions> get copyWith =>
      _$DecorationOptionsCopyWithImpl<DecorationOptions>(
          this as DecorationOptions, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecorationOptions &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, range, const DeepCollectionEquality().hash(options));

  @override
  String toString() {
    return 'DecorationOptions(range: $range, options: $options)';
  }
}

/// @nodoc
abstract mixin class $DecorationOptionsCopyWith<$Res> {
  factory $DecorationOptionsCopyWith(
          DecorationOptions value, $Res Function(DecorationOptions) _then) =
      _$DecorationOptionsCopyWithImpl;
  @useResult
  $Res call({Range range, Map<String, dynamic> options});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$DecorationOptionsCopyWithImpl<$Res>
    implements $DecorationOptionsCopyWith<$Res> {
  _$DecorationOptionsCopyWithImpl(this._self, this._then);

  final DecorationOptions _self;
  final $Res Function(DecorationOptions) _then;

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? options = null,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      options: null == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DecorationOptions].
extension DecorationOptionsPatterns on DecorationOptions {
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
    TResult Function(_DecorationOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
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
    TResult Function(_DecorationOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions():
        return $default(_that);
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
    TResult? Function(_DecorationOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
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
    TResult Function(Range range, Map<String, dynamic> options)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
        return $default(_that.range, _that.options);
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
    TResult Function(Range range, Map<String, dynamic> options) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions():
        return $default(_that.range, _that.options);
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
    TResult? Function(Range range, Map<String, dynamic> options)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecorationOptions() when $default != null:
        return $default(_that.range, _that.options);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DecorationOptions extends DecorationOptions {
  const _DecorationOptions(
      {required this.range, final Map<String, dynamic> options = const {}})
      : _options = options,
        super._();

  @override
  final Range range;
  final Map<String, dynamic> _options;
  @override
  @JsonKey()
  Map<String, dynamic> get options {
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_options);
  }

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DecorationOptionsCopyWith<_DecorationOptions> get copyWith =>
      __$DecorationOptionsCopyWithImpl<_DecorationOptions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecorationOptions &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, range, const DeepCollectionEquality().hash(_options));

  @override
  String toString() {
    return 'DecorationOptions(range: $range, options: $options)';
  }
}

/// @nodoc
abstract mixin class _$DecorationOptionsCopyWith<$Res>
    implements $DecorationOptionsCopyWith<$Res> {
  factory _$DecorationOptionsCopyWith(
          _DecorationOptions value, $Res Function(_DecorationOptions) _then) =
      __$DecorationOptionsCopyWithImpl;
  @override
  @useResult
  $Res call({Range range, Map<String, dynamic> options});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$DecorationOptionsCopyWithImpl<$Res>
    implements _$DecorationOptionsCopyWith<$Res> {
  __$DecorationOptionsCopyWithImpl(this._self, this._then);

  final _DecorationOptions _self;
  final $Res Function(_DecorationOptions) _then;

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? options = null,
  }) {
    return _then(_DecorationOptions(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of DecorationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$EditOperation {
  Range get range;
  String get text;
  bool? get forceMoveMarkers;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditOperationCopyWith<EditOperation> get copyWith =>
      _$EditOperationCopyWithImpl<EditOperation>(
          this as EditOperation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditOperation &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.forceMoveMarkers, forceMoveMarkers) ||
                other.forceMoveMarkers == forceMoveMarkers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, text, forceMoveMarkers);

  @override
  String toString() {
    return 'EditOperation(range: $range, text: $text, forceMoveMarkers: $forceMoveMarkers)';
  }
}

/// @nodoc
abstract mixin class $EditOperationCopyWith<$Res> {
  factory $EditOperationCopyWith(
          EditOperation value, $Res Function(EditOperation) _then) =
      _$EditOperationCopyWithImpl;
  @useResult
  $Res call({Range range, String text, bool? forceMoveMarkers});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$EditOperationCopyWithImpl<$Res>
    implements $EditOperationCopyWith<$Res> {
  _$EditOperationCopyWithImpl(this._self, this._then);

  final EditOperation _self;
  final $Res Function(EditOperation) _then;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? text = null,
    Object? forceMoveMarkers = freezed,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      forceMoveMarkers: freezed == forceMoveMarkers
          ? _self.forceMoveMarkers
          : forceMoveMarkers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [EditOperation].
extension EditOperationPatterns on EditOperation {
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
    TResult Function(_EditOperation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
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
    TResult Function(_EditOperation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation():
        return $default(_that);
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
    TResult? Function(_EditOperation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
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
    TResult Function(Range range, String text, bool? forceMoveMarkers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
        return $default(_that.range, _that.text, _that.forceMoveMarkers);
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
    TResult Function(Range range, String text, bool? forceMoveMarkers) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation():
        return $default(_that.range, _that.text, _that.forceMoveMarkers);
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
    TResult? Function(Range range, String text, bool? forceMoveMarkers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditOperation() when $default != null:
        return $default(_that.range, _that.text, _that.forceMoveMarkers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EditOperation extends EditOperation {
  const _EditOperation(
      {required this.range, required this.text, this.forceMoveMarkers})
      : super._();

  @override
  final Range range;
  @override
  final String text;
  @override
  final bool? forceMoveMarkers;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditOperationCopyWith<_EditOperation> get copyWith =>
      __$EditOperationCopyWithImpl<_EditOperation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditOperation &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.forceMoveMarkers, forceMoveMarkers) ||
                other.forceMoveMarkers == forceMoveMarkers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, text, forceMoveMarkers);

  @override
  String toString() {
    return 'EditOperation(range: $range, text: $text, forceMoveMarkers: $forceMoveMarkers)';
  }
}

/// @nodoc
abstract mixin class _$EditOperationCopyWith<$Res>
    implements $EditOperationCopyWith<$Res> {
  factory _$EditOperationCopyWith(
          _EditOperation value, $Res Function(_EditOperation) _then) =
      __$EditOperationCopyWithImpl;
  @override
  @useResult
  $Res call({Range range, String text, bool? forceMoveMarkers});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$EditOperationCopyWithImpl<$Res>
    implements _$EditOperationCopyWith<$Res> {
  __$EditOperationCopyWithImpl(this._self, this._then);

  final _EditOperation _self;
  final $Res Function(_EditOperation) _then;

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? text = null,
    Object? forceMoveMarkers = freezed,
  }) {
    return _then(_EditOperation(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      forceMoveMarkers: freezed == forceMoveMarkers
          ? _self.forceMoveMarkers
          : forceMoveMarkers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of EditOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// @nodoc
mixin _$FindOptions {
  bool get isRegex;
  bool get matchCase;
  bool get wholeWord;
  bool? get searchOnlyEditableRange;
  int? get limitResultCount;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FindOptionsCopyWith<FindOptions> get copyWith =>
      _$FindOptionsCopyWithImpl<FindOptions>(this as FindOptions, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindOptions &&
            (identical(other.isRegex, isRegex) || other.isRegex == isRegex) &&
            (identical(other.matchCase, matchCase) ||
                other.matchCase == matchCase) &&
            (identical(other.wholeWord, wholeWord) ||
                other.wholeWord == wholeWord) &&
            (identical(
                    other.searchOnlyEditableRange, searchOnlyEditableRange) ||
                other.searchOnlyEditableRange == searchOnlyEditableRange) &&
            (identical(other.limitResultCount, limitResultCount) ||
                other.limitResultCount == limitResultCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRegex, matchCase, wholeWord,
      searchOnlyEditableRange, limitResultCount);

  @override
  String toString() {
    return 'FindOptions(isRegex: $isRegex, matchCase: $matchCase, wholeWord: $wholeWord, searchOnlyEditableRange: $searchOnlyEditableRange, limitResultCount: $limitResultCount)';
  }
}

/// @nodoc
abstract mixin class $FindOptionsCopyWith<$Res> {
  factory $FindOptionsCopyWith(
          FindOptions value, $Res Function(FindOptions) _then) =
      _$FindOptionsCopyWithImpl;
  @useResult
  $Res call(
      {bool isRegex,
      bool matchCase,
      bool wholeWord,
      bool? searchOnlyEditableRange,
      int? limitResultCount});
}

/// @nodoc
class _$FindOptionsCopyWithImpl<$Res> implements $FindOptionsCopyWith<$Res> {
  _$FindOptionsCopyWithImpl(this._self, this._then);

  final FindOptions _self;
  final $Res Function(FindOptions) _then;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegex = null,
    Object? matchCase = null,
    Object? wholeWord = null,
    Object? searchOnlyEditableRange = freezed,
    Object? limitResultCount = freezed,
  }) {
    return _then(_self.copyWith(
      isRegex: null == isRegex
          ? _self.isRegex
          : isRegex // ignore: cast_nullable_to_non_nullable
              as bool,
      matchCase: null == matchCase
          ? _self.matchCase
          : matchCase // ignore: cast_nullable_to_non_nullable
              as bool,
      wholeWord: null == wholeWord
          ? _self.wholeWord
          : wholeWord // ignore: cast_nullable_to_non_nullable
              as bool,
      searchOnlyEditableRange: freezed == searchOnlyEditableRange
          ? _self.searchOnlyEditableRange
          : searchOnlyEditableRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      limitResultCount: freezed == limitResultCount
          ? _self.limitResultCount
          : limitResultCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FindOptions].
extension FindOptionsPatterns on FindOptions {
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
    TResult Function(_FindOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
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
    TResult Function(_FindOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions():
        return $default(_that);
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
    TResult? Function(_FindOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
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
    TResult Function(bool isRegex, bool matchCase, bool wholeWord,
            bool? searchOnlyEditableRange, int? limitResultCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
        return $default(_that.isRegex, _that.matchCase, _that.wholeWord,
            _that.searchOnlyEditableRange, _that.limitResultCount);
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
    TResult Function(bool isRegex, bool matchCase, bool wholeWord,
            bool? searchOnlyEditableRange, int? limitResultCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions():
        return $default(_that.isRegex, _that.matchCase, _that.wholeWord,
            _that.searchOnlyEditableRange, _that.limitResultCount);
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
    TResult? Function(bool isRegex, bool matchCase, bool wholeWord,
            bool? searchOnlyEditableRange, int? limitResultCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindOptions() when $default != null:
        return $default(_that.isRegex, _that.matchCase, _that.wholeWord,
            _that.searchOnlyEditableRange, _that.limitResultCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FindOptions extends FindOptions {
  const _FindOptions(
      {this.isRegex = false,
      this.matchCase = false,
      this.wholeWord = false,
      this.searchOnlyEditableRange,
      this.limitResultCount})
      : super._();

  @override
  @JsonKey()
  final bool isRegex;
  @override
  @JsonKey()
  final bool matchCase;
  @override
  @JsonKey()
  final bool wholeWord;
  @override
  final bool? searchOnlyEditableRange;
  @override
  final int? limitResultCount;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FindOptionsCopyWith<_FindOptions> get copyWith =>
      __$FindOptionsCopyWithImpl<_FindOptions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FindOptions &&
            (identical(other.isRegex, isRegex) || other.isRegex == isRegex) &&
            (identical(other.matchCase, matchCase) ||
                other.matchCase == matchCase) &&
            (identical(other.wholeWord, wholeWord) ||
                other.wholeWord == wholeWord) &&
            (identical(
                    other.searchOnlyEditableRange, searchOnlyEditableRange) ||
                other.searchOnlyEditableRange == searchOnlyEditableRange) &&
            (identical(other.limitResultCount, limitResultCount) ||
                other.limitResultCount == limitResultCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRegex, matchCase, wholeWord,
      searchOnlyEditableRange, limitResultCount);

  @override
  String toString() {
    return 'FindOptions(isRegex: $isRegex, matchCase: $matchCase, wholeWord: $wholeWord, searchOnlyEditableRange: $searchOnlyEditableRange, limitResultCount: $limitResultCount)';
  }
}

/// @nodoc
abstract mixin class _$FindOptionsCopyWith<$Res>
    implements $FindOptionsCopyWith<$Res> {
  factory _$FindOptionsCopyWith(
          _FindOptions value, $Res Function(_FindOptions) _then) =
      __$FindOptionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isRegex,
      bool matchCase,
      bool wholeWord,
      bool? searchOnlyEditableRange,
      int? limitResultCount});
}

/// @nodoc
class __$FindOptionsCopyWithImpl<$Res> implements _$FindOptionsCopyWith<$Res> {
  __$FindOptionsCopyWithImpl(this._self, this._then);

  final _FindOptions _self;
  final $Res Function(_FindOptions) _then;

  /// Create a copy of FindOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isRegex = null,
    Object? matchCase = null,
    Object? wholeWord = null,
    Object? searchOnlyEditableRange = freezed,
    Object? limitResultCount = freezed,
  }) {
    return _then(_FindOptions(
      isRegex: null == isRegex
          ? _self.isRegex
          : isRegex // ignore: cast_nullable_to_non_nullable
              as bool,
      matchCase: null == matchCase
          ? _self.matchCase
          : matchCase // ignore: cast_nullable_to_non_nullable
              as bool,
      wholeWord: null == wholeWord
          ? _self.wholeWord
          : wholeWord // ignore: cast_nullable_to_non_nullable
              as bool,
      searchOnlyEditableRange: freezed == searchOnlyEditableRange
          ? _self.searchOnlyEditableRange
          : searchOnlyEditableRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      limitResultCount: freezed == limitResultCount
          ? _self.limitResultCount
          : limitResultCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$LiveStats {
  ({int value, String label}) get lineCount;
  ({int value, String label}) get charCount;
  ({int value, String label}) get selectedLines;
  ({int value, String label}) get selectedCharacters;
  ({int value, String label}) get caretCount;
  ({int value, String label})? get cursorPosition;
  String? get language;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LiveStatsCopyWith<LiveStats> get copyWith =>
      _$LiveStatsCopyWithImpl<LiveStats>(this as LiveStats, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LiveStats &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.charCount, charCount) ||
                other.charCount == charCount) &&
            (identical(other.selectedLines, selectedLines) ||
                other.selectedLines == selectedLines) &&
            (identical(other.selectedCharacters, selectedCharacters) ||
                other.selectedCharacters == selectedCharacters) &&
            (identical(other.caretCount, caretCount) ||
                other.caretCount == caretCount) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lineCount, charCount,
      selectedLines, selectedCharacters, caretCount, cursorPosition, language);

  @override
  String toString() {
    return 'LiveStats(lineCount: $lineCount, charCount: $charCount, selectedLines: $selectedLines, selectedCharacters: $selectedCharacters, caretCount: $caretCount, cursorPosition: $cursorPosition, language: $language)';
  }
}

/// @nodoc
abstract mixin class $LiveStatsCopyWith<$Res> {
  factory $LiveStatsCopyWith(LiveStats value, $Res Function(LiveStats) _then) =
      _$LiveStatsCopyWithImpl;
  @useResult
  $Res call(
      {({int value, String label}) lineCount,
      ({int value, String label}) charCount,
      ({int value, String label}) selectedLines,
      ({int value, String label}) selectedCharacters,
      ({int value, String label}) caretCount,
      ({int value, String label})? cursorPosition,
      String? language});
}

/// @nodoc
class _$LiveStatsCopyWithImpl<$Res> implements $LiveStatsCopyWith<$Res> {
  _$LiveStatsCopyWithImpl(this._self, this._then);

  final LiveStats _self;
  final $Res Function(LiveStats) _then;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineCount = null,
    Object? charCount = null,
    Object? selectedLines = null,
    Object? selectedCharacters = null,
    Object? caretCount = null,
    Object? cursorPosition = freezed,
    Object? language = freezed,
  }) {
    return _then(_self.copyWith(
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      charCount: null == charCount
          ? _self.charCount
          : charCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedLines: null == selectedLines
          ? _self.selectedLines
          : selectedLines // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedCharacters: null == selectedCharacters
          ? _self.selectedCharacters
          : selectedCharacters // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      caretCount: null == caretCount
          ? _self.caretCount
          : caretCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as ({int value, String label})?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LiveStats].
extension LiveStatsPatterns on LiveStats {
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
    TResult Function(_LiveStats value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
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
    TResult Function(_LiveStats value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats():
        return $default(_that);
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
    TResult? Function(_LiveStats value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
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
    TResult Function(
            ({int value, String label}) lineCount,
            ({int value, String label}) charCount,
            ({int value, String label}) selectedLines,
            ({int value, String label}) selectedCharacters,
            ({int value, String label}) caretCount,
            ({int value, String label})? cursorPosition,
            String? language)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
        return $default(
            _that.lineCount,
            _that.charCount,
            _that.selectedLines,
            _that.selectedCharacters,
            _that.caretCount,
            _that.cursorPosition,
            _that.language);
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
    TResult Function(
            ({int value, String label}) lineCount,
            ({int value, String label}) charCount,
            ({int value, String label}) selectedLines,
            ({int value, String label}) selectedCharacters,
            ({int value, String label}) caretCount,
            ({int value, String label})? cursorPosition,
            String? language)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats():
        return $default(
            _that.lineCount,
            _that.charCount,
            _that.selectedLines,
            _that.selectedCharacters,
            _that.caretCount,
            _that.cursorPosition,
            _that.language);
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
    TResult? Function(
            ({int value, String label}) lineCount,
            ({int value, String label}) charCount,
            ({int value, String label}) selectedLines,
            ({int value, String label}) selectedCharacters,
            ({int value, String label}) caretCount,
            ({int value, String label})? cursorPosition,
            String? language)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveStats() when $default != null:
        return $default(
            _that.lineCount,
            _that.charCount,
            _that.selectedLines,
            _that.selectedCharacters,
            _that.caretCount,
            _that.cursorPosition,
            _that.language);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LiveStats extends LiveStats {
  const _LiveStats(
      {required this.lineCount,
      required this.charCount,
      required this.selectedLines,
      required this.selectedCharacters,
      required this.caretCount,
      this.cursorPosition,
      this.language})
      : super._();

  @override
  final ({int value, String label}) lineCount;
  @override
  final ({int value, String label}) charCount;
  @override
  final ({int value, String label}) selectedLines;
  @override
  final ({int value, String label}) selectedCharacters;
  @override
  final ({int value, String label}) caretCount;
  @override
  final ({int value, String label})? cursorPosition;
  @override
  final String? language;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LiveStatsCopyWith<_LiveStats> get copyWith =>
      __$LiveStatsCopyWithImpl<_LiveStats>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LiveStats &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.charCount, charCount) ||
                other.charCount == charCount) &&
            (identical(other.selectedLines, selectedLines) ||
                other.selectedLines == selectedLines) &&
            (identical(other.selectedCharacters, selectedCharacters) ||
                other.selectedCharacters == selectedCharacters) &&
            (identical(other.caretCount, caretCount) ||
                other.caretCount == caretCount) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lineCount, charCount,
      selectedLines, selectedCharacters, caretCount, cursorPosition, language);

  @override
  String toString() {
    return 'LiveStats(lineCount: $lineCount, charCount: $charCount, selectedLines: $selectedLines, selectedCharacters: $selectedCharacters, caretCount: $caretCount, cursorPosition: $cursorPosition, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$LiveStatsCopyWith<$Res>
    implements $LiveStatsCopyWith<$Res> {
  factory _$LiveStatsCopyWith(
          _LiveStats value, $Res Function(_LiveStats) _then) =
      __$LiveStatsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {({int value, String label}) lineCount,
      ({int value, String label}) charCount,
      ({int value, String label}) selectedLines,
      ({int value, String label}) selectedCharacters,
      ({int value, String label}) caretCount,
      ({int value, String label})? cursorPosition,
      String? language});
}

/// @nodoc
class __$LiveStatsCopyWithImpl<$Res> implements _$LiveStatsCopyWith<$Res> {
  __$LiveStatsCopyWithImpl(this._self, this._then);

  final _LiveStats _self;
  final $Res Function(_LiveStats) _then;

  /// Create a copy of LiveStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lineCount = null,
    Object? charCount = null,
    Object? selectedLines = null,
    Object? selectedCharacters = null,
    Object? caretCount = null,
    Object? cursorPosition = freezed,
    Object? language = freezed,
  }) {
    return _then(_LiveStats(
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      charCount: null == charCount
          ? _self.charCount
          : charCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedLines: null == selectedLines
          ? _self.selectedLines
          : selectedLines // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      selectedCharacters: null == selectedCharacters
          ? _self.selectedCharacters
          : selectedCharacters // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      caretCount: null == caretCount
          ? _self.caretCount
          : caretCount // ignore: cast_nullable_to_non_nullable
              as ({int value, String label}),
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as ({int value, String label})?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$EditorState {
  String get content;
  Range? get selection;
  Position? get cursorPosition;
  int get lineCount;
  bool get hasUnsavedChanges;
  String? get language;
  String? get theme;
  LiveStats? get stats;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditorStateCopyWith<EditorState> get copyWith =>
      _$EditorStateCopyWithImpl<EditorState>(this as EditorState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditorState &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.selection, selection) ||
                other.selection == selection) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.hasUnsavedChanges, hasUnsavedChanges) ||
                other.hasUnsavedChanges == hasUnsavedChanges) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, selection,
      cursorPosition, lineCount, hasUnsavedChanges, language, theme, stats);

  @override
  String toString() {
    return 'EditorState(content: $content, selection: $selection, cursorPosition: $cursorPosition, lineCount: $lineCount, hasUnsavedChanges: $hasUnsavedChanges, language: $language, theme: $theme, stats: $stats)';
  }
}

/// @nodoc
abstract mixin class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) _then) =
      _$EditorStateCopyWithImpl;
  @useResult
  $Res call(
      {String content,
      Range? selection,
      Position? cursorPosition,
      int lineCount,
      bool hasUnsavedChanges,
      String? language,
      String? theme,
      LiveStats? stats});

  $RangeCopyWith<$Res>? get selection;
  $PositionCopyWith<$Res>? get cursorPosition;
  $LiveStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res> implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._self, this._then);

  final EditorState _self;
  final $Res Function(EditorState) _then;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? selection = freezed,
    Object? cursorPosition = freezed,
    Object? lineCount = null,
    Object? hasUnsavedChanges = null,
    Object? language = freezed,
    Object? theme = freezed,
    Object? stats = freezed,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selection: freezed == selection
          ? _self.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Range?,
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnsavedChanges: null == hasUnsavedChanges
          ? _self.hasUnsavedChanges
          : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: freezed == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as LiveStats?,
    ));
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get selection {
    if (_self.selection == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_self.selection!, (value) {
      return _then(_self.copyWith(selection: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get cursorPosition {
    if (_self.cursorPosition == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_self.cursorPosition!, (value) {
      return _then(_self.copyWith(cursorPosition: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LiveStatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
      return null;
    }

    return $LiveStatsCopyWith<$Res>(_self.stats!, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }
}

/// Adds pattern-matching-related methods to [EditorState].
extension EditorStatePatterns on EditorState {
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
    TResult Function(_EditorState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
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
    TResult Function(_EditorState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState():
        return $default(_that);
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
    TResult? Function(_EditorState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
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
    TResult Function(
            String content,
            Range? selection,
            Position? cursorPosition,
            int lineCount,
            bool hasUnsavedChanges,
            String? language,
            String? theme,
            LiveStats? stats)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
        return $default(
            _that.content,
            _that.selection,
            _that.cursorPosition,
            _that.lineCount,
            _that.hasUnsavedChanges,
            _that.language,
            _that.theme,
            _that.stats);
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
    TResult Function(
            String content,
            Range? selection,
            Position? cursorPosition,
            int lineCount,
            bool hasUnsavedChanges,
            String? language,
            String? theme,
            LiveStats? stats)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState():
        return $default(
            _that.content,
            _that.selection,
            _that.cursorPosition,
            _that.lineCount,
            _that.hasUnsavedChanges,
            _that.language,
            _that.theme,
            _that.stats);
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
    TResult? Function(
            String content,
            Range? selection,
            Position? cursorPosition,
            int lineCount,
            bool hasUnsavedChanges,
            String? language,
            String? theme,
            LiveStats? stats)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditorState() when $default != null:
        return $default(
            _that.content,
            _that.selection,
            _that.cursorPosition,
            _that.lineCount,
            _that.hasUnsavedChanges,
            _that.language,
            _that.theme,
            _that.stats);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EditorState extends EditorState {
  const _EditorState(
      {required this.content,
      this.selection,
      this.cursorPosition,
      required this.lineCount,
      required this.hasUnsavedChanges,
      this.language,
      this.theme,
      this.stats})
      : super._();

  @override
  final String content;
  @override
  final Range? selection;
  @override
  final Position? cursorPosition;
  @override
  final int lineCount;
  @override
  final bool hasUnsavedChanges;
  @override
  final String? language;
  @override
  final String? theme;
  @override
  final LiveStats? stats;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditorStateCopyWith<_EditorState> get copyWith =>
      __$EditorStateCopyWithImpl<_EditorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorState &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.selection, selection) ||
                other.selection == selection) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition) &&
            (identical(other.lineCount, lineCount) ||
                other.lineCount == lineCount) &&
            (identical(other.hasUnsavedChanges, hasUnsavedChanges) ||
                other.hasUnsavedChanges == hasUnsavedChanges) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, selection,
      cursorPosition, lineCount, hasUnsavedChanges, language, theme, stats);

  @override
  String toString() {
    return 'EditorState(content: $content, selection: $selection, cursorPosition: $cursorPosition, lineCount: $lineCount, hasUnsavedChanges: $hasUnsavedChanges, language: $language, theme: $theme, stats: $stats)';
  }
}

/// @nodoc
abstract mixin class _$EditorStateCopyWith<$Res>
    implements $EditorStateCopyWith<$Res> {
  factory _$EditorStateCopyWith(
          _EditorState value, $Res Function(_EditorState) _then) =
      __$EditorStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String content,
      Range? selection,
      Position? cursorPosition,
      int lineCount,
      bool hasUnsavedChanges,
      String? language,
      String? theme,
      LiveStats? stats});

  @override
  $RangeCopyWith<$Res>? get selection;
  @override
  $PositionCopyWith<$Res>? get cursorPosition;
  @override
  $LiveStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$EditorStateCopyWithImpl<$Res> implements _$EditorStateCopyWith<$Res> {
  __$EditorStateCopyWithImpl(this._self, this._then);

  final _EditorState _self;
  final $Res Function(_EditorState) _then;

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? selection = freezed,
    Object? cursorPosition = freezed,
    Object? lineCount = null,
    Object? hasUnsavedChanges = null,
    Object? language = freezed,
    Object? theme = freezed,
    Object? stats = freezed,
  }) {
    return _then(_EditorState(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selection: freezed == selection
          ? _self.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Range?,
      cursorPosition: freezed == cursorPosition
          ? _self.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      lineCount: null == lineCount
          ? _self.lineCount
          : lineCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnsavedChanges: null == hasUnsavedChanges
          ? _self.hasUnsavedChanges
          : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: freezed == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as LiveStats?,
    ));
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get selection {
    if (_self.selection == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_self.selection!, (value) {
      return _then(_self.copyWith(selection: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get cursorPosition {
    if (_self.cursorPosition == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_self.cursorPosition!, (value) {
      return _then(_self.copyWith(cursorPosition: value));
    });
  }

  /// Create a copy of EditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LiveStatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
      return null;
    }

    return $LiveStatsCopyWith<$Res>(_self.stats!, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }
}

/// @nodoc
mixin _$FindMatch {
  Range get range;
  String? get match;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FindMatchCopyWith<FindMatch> get copyWith =>
      _$FindMatchCopyWithImpl<FindMatch>(this as FindMatch, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindMatch &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.match, match) || other.match == match));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, match);

  @override
  String toString() {
    return 'FindMatch(range: $range, match: $match)';
  }
}

/// @nodoc
abstract mixin class $FindMatchCopyWith<$Res> {
  factory $FindMatchCopyWith(FindMatch value, $Res Function(FindMatch) _then) =
      _$FindMatchCopyWithImpl;
  @useResult
  $Res call({Range range, String? match});

  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class _$FindMatchCopyWithImpl<$Res> implements $FindMatchCopyWith<$Res> {
  _$FindMatchCopyWithImpl(this._self, this._then);

  final FindMatch _self;
  final $Res Function(FindMatch) _then;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? match = freezed,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      match: freezed == match
          ? _self.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FindMatch].
extension FindMatchPatterns on FindMatch {
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
    TResult Function(_FindMatch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
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
    TResult Function(_FindMatch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch():
        return $default(_that);
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
    TResult? Function(_FindMatch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
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
    TResult Function(Range range, String? match)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
        return $default(_that.range, _that.match);
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
    TResult Function(Range range, String? match) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch():
        return $default(_that.range, _that.match);
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
    TResult? Function(Range range, String? match)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FindMatch() when $default != null:
        return $default(_that.range, _that.match);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FindMatch extends FindMatch {
  const _FindMatch({required this.range, this.match}) : super._();

  @override
  final Range range;
  @override
  final String? match;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FindMatchCopyWith<_FindMatch> get copyWith =>
      __$FindMatchCopyWithImpl<_FindMatch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FindMatch &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.match, match) || other.match == match));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, match);

  @override
  String toString() {
    return 'FindMatch(range: $range, match: $match)';
  }
}

/// @nodoc
abstract mixin class _$FindMatchCopyWith<$Res>
    implements $FindMatchCopyWith<$Res> {
  factory _$FindMatchCopyWith(
          _FindMatch value, $Res Function(_FindMatch) _then) =
      __$FindMatchCopyWithImpl;
  @override
  @useResult
  $Res call({Range range, String? match});

  @override
  $RangeCopyWith<$Res> get range;
}

/// @nodoc
class __$FindMatchCopyWithImpl<$Res> implements _$FindMatchCopyWith<$Res> {
  __$FindMatchCopyWithImpl(this._self, this._then);

  final _FindMatch _self;
  final $Res Function(_FindMatch) _then;

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? match = freezed,
  }) {
    return _then(_FindMatch(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range,
      match: freezed == match
          ? _self.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FindMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get range {
    return $RangeCopyWith<$Res>(_self.range, (value) {
      return _then(_self.copyWith(range: value));
    });
  }
}

// dart format on
