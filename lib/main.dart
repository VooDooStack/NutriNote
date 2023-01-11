import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nutrinote/app/routing/app_router.dart';
import 'package:nutrinote/app/services/analytics_service.dart';
import 'package:nutrinote/app/services/dynamic_linking.dart';

GetIt locator = GetIt.instance;

void main() {
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
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
