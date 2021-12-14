// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'increment_reducer_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncrementReducerAction extends IncrementReducerAction {
  @override
  final int value;

  factory _$IncrementReducerAction(
          [void Function(IncrementReducerActionBuilder)? updates]) =>
      (new IncrementReducerActionBuilder()..update(updates)).build();

  _$IncrementReducerAction._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, 'IncrementReducerAction', 'value');
  }

  @override
  IncrementReducerAction rebuild(
          void Function(IncrementReducerActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncrementReducerActionBuilder toBuilder() =>
      new IncrementReducerActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncrementReducerAction && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IncrementReducerAction')
          ..add('value', value))
        .toString();
  }
}

class IncrementReducerActionBuilder
    implements Builder<IncrementReducerAction, IncrementReducerActionBuilder> {
  _$IncrementReducerAction? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  IncrementReducerActionBuilder() {
    IncrementReducerAction._initializeBuilder(this);
  }

  IncrementReducerActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncrementReducerAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncrementReducerAction;
  }

  @override
  void update(void Function(IncrementReducerActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IncrementReducerAction build() {
    final _$result = _$v ??
        new _$IncrementReducerAction._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'IncrementReducerAction', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
