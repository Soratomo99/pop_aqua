import 'package:pop_aqua/store/models/app_state.dart';
import 'package:redux/redux.dart';

class AppStateViewModel {
  final String status;
  final int value;
  final Function({required dynamic action}) dispatch;

  AppStateViewModel({
    required this.status,
    required this.value,
    required this.dispatch,
  });

  factory AppStateViewModel.create(Store<AppState> store) {
    onDispatch({required dynamic action}) {
      store.dispatch(action);
    }

    return AppStateViewModel(
        status: store.state.status,
        value: store.state.value,
        dispatch: onDispatch);
  }
}
