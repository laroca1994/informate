import 'package:dio/dio.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET('news')
  Future<BasicResponse<Article>> news();
  @GET('sources')
  Future<BasicResponse<Source>> sources(
    @Query('search') String search, {
    @Query('countries') String countries,
    @Query('languages') String languages,
    @Query('categories') String categories,
    @Query('limit') int limit,
    @Query('offset') int offset,
  });
}
