import 'package:built_value/built_value.dart';
import 'package:pop_aqua/store/actions/action.dart';

part 'increment_reducer_action.g.dart';

abstract class AbstractIncrementReducerAction {}

abstract class IncrementReducerAction
    implements
        Built<IncrementReducerAction, IncrementReducerActionBuilder>,
        AbstractIncrementReducerAction,
        AppAction {
  int get value;
  IncrementReducerAction._();

  factory IncrementReducerAction.create({required int value}) =>
      IncrementReducerAction((update) => update..value = value);

  static void _initializeBuilder(IncrementReducerActionBuilder builder) {}

  factory IncrementReducerAction(
          [void Function(IncrementReducerActionBuilder)? updates]) =
      _$IncrementReducerAction;
}
// cmd: flutter pub run build_runner build
