import 'package:pop_aqua/store/actions/increment_reducer_action.dart';
import 'package:pop_aqua/store/actions/status_reducer_action.dart';
import 'package:pop_aqua/store/models/app_state.dart';
import 'package:redux/redux.dart';

final Reducer<AppState> appStateReducer = combineReducers<AppState>([
  TypedReducer<AppState, StatusReducerAction>(reducerChangeStatus),
  TypedReducer<AppState, IncrementReducerAction>(reducerChangeValue),
]);

AppState reducerChangeStatus(AppState state, StatusReducerAction action) {
  return state.rebuild((p0) => p0..status = action.newStatus);
}

AppState reducerChangeValue(AppState state, IncrementReducerAction action) {
  print(action.value);
  return state.rebuild((p0) => p0..value = action.value);
}
