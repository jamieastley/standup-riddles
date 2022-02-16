import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/bloc/picker_selector_bloc.dart';
import 'bloc/content/content_bloc.dart';
import 'bloc/picker/picker_bloc.dart';
import 'core/theme.dart';
import 'pages/content_settings.dart';
import 'pages/game.dart';
import 'pages/picker_settings.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter router;
  late final PickerBloc pickerBloc;

  @override
  void initState() {
    pickerBloc = PickerBloc();
    router = GoRouter(
      debugLogDiagnostics: true,
      urlPathStrategy: UrlPathStrategy.path,
      routes: [
        GoRoute(
          name: PickerPage.routeName,
          path: PickerPage.routePath,
          builder: (context, state) => const PickerPage(),
          routes: [
            GoRoute(
              name: PickerSettings.routeName,
              path: PickerSettings.routePath,
              builder: (context, state) => const PickerSettings(),
            ),
            GoRoute(
              name: ContentSettings.routeName,
              path: ContentSettings.routeName,
              builder: (context, state) => BlocProvider<ContentBloc>(
                create: (context) => ContentBloc(),
                child: const ContentSettings(),
              ),
            ),
          ],
        ),
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<PickerBloc>(create: (context) => PickerBloc()),
          BlocProvider<ContentBloc>(create: (context) => ContentBloc()),
          BlocProvider<PickerSelectorBloc>(create: (context) => PickerSelectorBloc()),
        ],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          title: 'Standup Riddles',
        ),
      );
}
