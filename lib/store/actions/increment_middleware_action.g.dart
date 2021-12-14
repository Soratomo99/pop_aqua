// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'increment_middleware_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncrementMiddlewareAction extends IncrementMiddlewareAction {
  @override
  final int value;

  factory _$IncrementMiddlewareAction(
          [void Function(IncrementMiddlewareActionBuilder)? updates]) =>
      (new IncrementMiddlewareActionBuilder()..update(updates)).build();

  _$IncrementMiddlewareAction._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, 'IncrementMiddlewareAction', 'value');
  }

  @override
  IncrementMiddlewareAction rebuild(
          void Function(IncrementMiddlewareActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncrementMiddlewareActionBuilder toBuilder() =>
      new IncrementMiddlewareActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncrementMiddlewareAction && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IncrementMiddlewareAction')
          ..add('value', value))
        .toString();
  }
}

class IncrementMiddlewareActionBuilder
    implements
        Builder<IncrementMiddlewareAction, IncrementMiddlewareActionBuilder> {
  _$IncrementMiddlewareAction? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  IncrementMiddlewareActionBuilder() {
    IncrementMiddlewareAction._initializeBuilder(this);
  }

  IncrementMiddlewareActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncrementMiddlewareAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncrementMiddlewareAction;
  }

  @override
  void update(void Function(IncrementMiddlewareActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IncrementMiddlewareAction build() {
    final _$result = _$v ??
        new _$IncrementMiddlewareAction._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'IncrementMiddlewareAction', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
