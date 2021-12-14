import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pop_aqua/store/actions/increment_middleware_action.dart';
import 'package:pop_aqua/store/models/app_state.dart';
import 'package:pop_aqua/store/selectors/app_state_view_model.dart';
import 'package:redux/redux.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppStateViewModel>(
        distinct: true,
        converter: (Store<AppState> store) => AppStateViewModel.create(store),
        onInitialBuild: (viewModel) {},
        builder: (context, viewModel) {
          final value = viewModel.value;
          return Text(
            value.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          );
        });
  }
}

class AquaImage extends StatelessWidget {
  const AquaImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppStateViewModel>(
        distinct: true,
        converter: (Store<AppState> store) => AppStateViewModel.create(store),
        onInitialBuild: (viewModel) {},
        builder: (context, viewModel) {
          final value = viewModel.value;
          if (viewModel.status == "idle") {
            return GestureDetector(
              onTap: () {
                // action;
                viewModel.dispatch(
                    action: IncrementMiddlewareAction.create(value: value));
              },
              child: Image.asset(
                "assets/images/aqua1.png",
                height: 500,
              ),
            );
          } else {
            return Image.asset(
              "assets/images/aqua2.png",
              height: 500,
            );
          }
        });
  }
}
