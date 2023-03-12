import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nutrinote/core/routing/app_router.dart';
import 'package:nutrinote/core/services/analytics_service.dart';
import 'package:nutrinote/core/services/dynamic_linking.dart';
import 'package:nutrinote/core/services/http_override.dart';
import 'package:nutrinote/core/state/app/app_bloc.dart';
import 'package:nutrinote/core/state/state_providers.dart';
import 'package:nutrinote/firebase_options.dart';

GetIt locator = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await Firebase.initializeApp(
    name: 'Nutrinote',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  locator.registerLazySingleton(() => AnalyticsService(debug: kDebugMode));
  locator.registerLazySingleton(() => DynamicLinkService());
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  AppRouter? router;
  @override
  Widget build(BuildContext context) {
    return StateProviders(
      child: Builder(
        builder: (context) {
          router ??= AppRouter(navigatorKey: navigatorKey, appBloc: context.read<AppBloc>());
          return MaterialApp.router(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            routerConfig: router!.router,
            themeMode: ThemeMode.light,
            theme: FlexThemeData.light(
              scheme: FlexScheme.ebonyClay,
              fontFamily: 'Roboto',
            ),
            darkTheme: FlexThemeData.dark(
              scheme: FlexScheme.ebonyClay,
              fontFamily: 'Roboto',
            ),
          );
        },
      ),
    );
  }
}
