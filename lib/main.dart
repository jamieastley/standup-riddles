import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'bloc/app_bloc_observer.dart';
import 'core/injector.dart';

Future<void> main() async {
  await BlocOverrides.runZoned(
    () async {
      await Injector().init(() => runApp(const App()));
    },
    blocObserver: AppBlocObserver(),
  );
}
