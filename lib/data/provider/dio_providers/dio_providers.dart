import 'package:dio/dio.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/data/sources/api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio()
    ..interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (RequestOptions options, handler) {
          options.queryParameters.addAll({
            'access_key': accessKey
          });
          return handler.next(options);
        },
      ),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    ]);
}

@riverpod
Api api(ApiRef ref) {
  final dio = ref.watch(dioProvider);
  return Api(dio, baseUrl: baseUrl);
}
