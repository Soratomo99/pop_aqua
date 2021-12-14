import 'package:flutter/material.dart';
import 'package:pop_aqua/store/epics/value_epic.dart';
import 'package:pop_aqua/store/models/app_state.dart';
import 'package:pop_aqua/store/reducers/app_state_reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final store = Store<AppState>(appStateReducer,
      initialState: AppState(),
      middleware: [EpicMiddleware<AppState>(AppMiddleware())]);
  runApp(PopAqua(
    store: store,
  ));
}
