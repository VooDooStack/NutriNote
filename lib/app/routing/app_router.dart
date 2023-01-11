import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrinote/app/services/analytics_service.dart';
import 'package:nutrinote/app/services/refresh_stream.dart';
import 'package:nutrinote/app/state/app/app_bloc.dart';
import 'package:nutrinote/pages/home_page.dart';

class AppRouter {
  final GlobalKey<NavigatorState>? navigatorKey;
  final AppBloc appBloc;
  AppRouter({required this.appBloc, required this.navigatorKey});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);

  late final router = GoRouter(
    navigatorKey: navigatorKey,
    refreshListenable: GoRouterRefreshStream(appBloc.stream),
    initialLocation: '/',
    observers: [
      if (!kDebugMode) GetIt.instance<AnalyticsService>(),
    ],
    routes: [
      GoRoute(
        path: '/',
        name: 'home_page',
        builder: (context, state) => const HomePage(),
      ),
    ],
    redirect: (context, state) {
      final bool isAuthenticated = appBloc.state.status == AuthenticationStatus.authenticated;
      if (state.location != "/signup" && !isAuthenticated && state.location != "/login" && !isAuthenticated) {
        return "/login";
      } else if (state.location == "/login" && isAuthenticated || state.location == "/signup" && isAuthenticated) {
        return "/session";
      } else {
        return null;
      }
    },
  );
}
