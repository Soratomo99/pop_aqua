import 'dart:developer';

import 'package:pop_aqua/store/actions/action.dart';
import 'package:pop_aqua/store/actions/increment_middleware_action.dart';
import 'package:pop_aqua/store/actions/increment_reducer_action.dart';
import 'package:pop_aqua/store/actions/status_reducer_action.dart';
import 'package:pop_aqua/store/models/app_state.dart';
import 'package:redux_epics/redux_epics.dart';

class AppMiddleware implements EpicClass<AppState> {
  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([
      epicsGetValue,
    ])(actions, store);
  }

  Stream<AppAction> epicsGetValue(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is IncrementMiddlewareAction) {
        try {
          yield StatusReducerAction.create(status: "isLoading");
          await Future.delayed(
            const Duration(milliseconds: 500),
          );
          final newValue = action.value + 1;
          yield IncrementReducerAction.create(value: newValue);
        } catch (e, stackTrack) {
          yield StatusReducerAction.create(status: "error");
          log(
            "Error when get a new value",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield StatusReducerAction.create(status: "idle");
        }
      }
    }
  }
}
