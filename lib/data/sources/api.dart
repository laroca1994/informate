import 'package:dio/dio.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET('news')
  Future<BasicResponse<Article>> news( {
    @Query('sources') String sources = '',
    @Query('keywords') String keywords = '',
    @Query('date') String date = '',
    @Query('sort') String sort = '',
    @Query('countries') String countries = '',
    @Query('languages') String languages = '',
    @Query('categories') String categories = '',
    @Query('limit') int limit = 25,
    @Query('offset') int offset = 0,
  });

  @GET('sources')
  Future<BasicResponse<Source>> sources(
    @Query('search') String search, {
    @Query('countries') String countries = '',
    @Query('languages') String languages = '',
    @Query('categories') String categories = '',
    @Query('limit') int limit = 25,
    @Query('offset') int offset = 0,
  });
}
