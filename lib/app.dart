import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pop_aqua/screens/main_screen/main_screen.dart';
import 'package:pop_aqua/store/models/app_state.dart';
import 'package:redux/redux.dart';

class PopAqua extends StatelessWidget {
  final Store<AppState> store;

  const PopAqua({required this.store, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
