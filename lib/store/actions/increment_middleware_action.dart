import 'package:built_value/built_value.dart';
import 'package:pop_aqua/store/actions/action.dart';

part 'increment_middleware_action.g.dart';

abstract class AbstractIncrementMiddlewareAction {}

abstract class IncrementMiddlewareAction
    implements
        Built<IncrementMiddlewareAction, IncrementMiddlewareActionBuilder>,
        AbstractIncrementMiddlewareAction,
        AppAction {
  int get value;
  IncrementMiddlewareAction._();

  factory IncrementMiddlewareAction.create({required int value}) =>
      IncrementMiddlewareAction((update) => update..value = value);

  static void _initializeBuilder(IncrementMiddlewareActionBuilder builder) {}

  factory IncrementMiddlewareAction(
          [void Function(IncrementMiddlewareActionBuilder)? updates]) =
      _$IncrementMiddlewareAction;
}
// cmd: flutter pub run build_runner build
