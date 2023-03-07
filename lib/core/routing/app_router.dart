import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrinote/core/services/analytics_service.dart';
import 'package:nutrinote/core/services/refresh_stream.dart';
import 'package:nutrinote/core/state/app/app_bloc.dart';
import 'package:nutrinote/pages/addition_page.dart';
import 'package:nutrinote/pages/dashboard/dashboard_page.dart';
import 'package:nutrinote/pages/login_page.dart';
import 'package:nutrinote/pages/main_page.dart';
import 'package:nutrinote/pages/nutrition_logs/nutrition_logs_page.dart';
import 'package:nutrinote/pages/register_page.dart';
import 'package:nutrinote/pages/relationship_page.dart';
import 'package:nutrinote/pages/settings_page.dart';

class AppRouter {
  final GlobalKey<NavigatorState>? navigatorKey;
  final AppBloc appBloc;
  AppRouter({required this.appBloc, required this.navigatorKey});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  late final router = GoRouter(
    navigatorKey: navigatorKey,
    refreshListenable: GoRouterRefreshStream(appBloc.stream),
    initialLocation: '/dashboard',
    observers: [
      if (!kDebugMode) GetIt.instance<AnalyticsService>(),
    ],
    routes: [
      ShellRoute(
        navigatorKey: GlobalKey<NavigatorState>(),
        builder: (context, state, child) {
          return MainPage(
            title: baseRouteNames.entries
                .firstWhere(
                  (element) =>
                      element.key ==
                      '${GoRouter.of(context).location.split("/")[1]}_page',
                  orElse: () => baseRouteNames.entries.first,
                )
                .key
                .split('_')[0],
            onTap: (val) => GoRouter.of(context).goNamed(baseRouteNames.entries
                .firstWhere((element) => element.value == val)
                .key),
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/dashboard',
            name: 'dashboard_page',
            builder: (context, state) => const DashboardPage(),
          ),
          GoRoute(
            path: '/folder',
            name: 'folder_page',
            builder: (context, state) => const LogsPage(),
          ),
          GoRoute(
            path: '/addition',
            name: 'addition_page',
            builder: (context, state) => const AdditionPage(),
          ),
          GoRoute(
            path: '/relationship',
            name: 'relationship_page',
            builder: (context, state) => const RelationshipPage(),
          ),
          GoRoute(
            path: '/settings',
            name: 'settings_page',
            builder: (context, state) => const SettingsPage(),
          ),
        ],
      ),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(
          path: '/register', builder: (context, state) => const RegisterPage()),
    ],
    redirect: (context, state) {
      final bool isAuthenticated =
          appBloc.state.status == AuthenticationStatus.authenticated;
      if (state.location != "/signup" &&
          !isAuthenticated &&
          state.location != "/login" &&
          !isAuthenticated) {
        return "/login";
      } else if (state.location == "/login" && isAuthenticated ||
          state.location == "/signup" && isAuthenticated) {
        return "/dashboard";
      } else {
        return null;
      }
    },
  );
}

const Map<String, int> baseRouteNames = {
  'dashboard_page': 0,
  'folder_page': 1,
  'addition_page': 2,
  'relationship_page': 3,
  'settings_page': 4,
};
