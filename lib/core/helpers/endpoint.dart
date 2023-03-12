import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:nutrinote/core/services/analytics_service.dart';
import 'package:nutrinote/main.dart';

class Endpoints {
  static const String baseUrl = kDebugMode ? "http://localhost:8080/api/" : "dev.nutrinote.app/api/";
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 15000;

  Future<Dio> dio() async {
    final String? token = await FirebaseAuth.instance.currentUser?.getIdToken();
    return locator<AnalyticsService>().networkPerformanceInterceptor(
      dio: Dio(
        BaseOptions(
          baseUrl: baseUrl,
          headers: {"Authorization": "Bearer $token"},
          receiveTimeout: const Duration(milliseconds: receiveTimeout),
          connectTimeout: const Duration(milliseconds: connectionTimeout),
        ),
      ),
    );
  }

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    bool? authenticate,
  }) async {
    try {
      String? token;
      if (authenticate == true) token = await FirebaseAuth.instance.currentUser?.getIdToken();
      final Response response = await dio().then(
        (value) => value.get(
          baseUrl + url,
          queryParameters: queryParameters,
          options: authenticate == true ? Options(headers: {"Authorization": "Bearer $token"}) : options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
        ),
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String uri, {
    // ignore: type_annotate_public_apis
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    bool? authenticate,
  }) async {
    try {
      String? token;
      if (authenticate == true) token = await FirebaseAuth.instance.currentUser?.getIdToken();
      final Response response = await dio().then(
        (value) => value.post(
          baseUrl + uri,
          data: data,
          queryParameters: queryParameters,
          options: authenticate == true ? Options(headers: {"Authorization": "Bearer $token"}) : options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String uri, {
    // ignore: type_annotate_public_apis
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio().then(
        (value) => value.put(
          baseUrl + uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
    String uri, {
    // ignore: type_annotate_public_apis
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio().then(
        (value) async => value.delete(
          baseUrl + uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        ),
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
