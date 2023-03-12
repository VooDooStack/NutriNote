import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nutrinote/core/helpers/endpoint.dart';
import 'package:nutrinote/core/models/app_user_model.dart';
import 'package:nutrinote/core/services/analytics_service.dart';
import 'package:nutrinote/core/state/app/app_bloc.dart';
import 'package:nutrinote/main.dart';

class AuthenticationRepository {
  final controller = StreamController<AuthStream>.broadcast();
  final storage = const FlutterSecureStorage();
  final Endpoints endPoints = Endpoints();

  Stream<AuthStream> get status async* {
    yield AuthStream(user: null, status: AuthenticationStatus.unauthenticated);
    yield* controller.stream;
  }

  void persistUserAuth() {
    if (kDebugMode) log('trying to log in user');
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user == null) {
        if (kDebugMode) log('User is currently signed out!');
        controller.add(AuthStream(user: null, status: AuthenticationStatus.unauthenticated));
      } else {
        if (kDebugMode) log('User is signed in!');
        var response = await endPoints.post(
          'account/authenticate',
          data: {
            'Authorization ': 'Bearer ${await user.getIdToken()}',
          },
        );
        controller.add(AuthStream(user: AppUser.fromJson(response.data), status: AuthenticationStatus.authenticated));
      }
    }).onError((e) {
      locator<AnalyticsService>().logError(exception: e.toString(), reason: 'persist_user_authentication', stacktrace: StackTrace.current);
    });
  }

  Future<void> logIn({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
        if (kDebugMode) log('user logged in');
      });

      var response = await endPoints.post('account/authenticate', authenticate: true);

      controller.add(AuthStream(user: AppUser.fromJson(response.data), status: AuthenticationStatus.authenticated));
      locator<AnalyticsService>().logLoggedIn(
        loggedInMethod: 'email',
      );
    } catch (e) {
      Fluttertoast.showToast(msg: '$e' ?? 'Error', toastLength: Toast.LENGTH_LONG, backgroundColor: Colors.red, timeInSecForIosWeb: 3);
      if (kDebugMode) {
        log("$e");
      } else {
        locator<AnalyticsService>().logError(exception: e.toString(), reason: 'log_in_email_password', stacktrace: StackTrace.current);
      }
    }
  }

  Future<void> register({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message ?? 'Error', toastLength: Toast.LENGTH_LONG, backgroundColor: Colors.red, timeInSecForIosWeb: 3);
      if (kDebugMode) log(e.toString());
      locator<AnalyticsService>().logError(exception: e.toString(), reason: 'register_email_pass', stacktrace: StackTrace.current);
    }
  }

  Future<void> logOut() async {
    FirebaseAuth.instance.signOut();
    controller.add(AuthStream(user: null, status: AuthenticationStatus.unauthenticated));
  }

  void dispose() => controller.close();
}

class AuthStream {
  AppUser? user;
  AuthenticationStatus status;
  AuthStream({required this.user, required this.status});
}
