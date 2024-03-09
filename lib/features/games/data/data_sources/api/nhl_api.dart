import 'package:bdl_demo/features/games/data/models/schedule_api_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'nhl_api.g.dart';

@RestApi(baseUrl: NhlApi._baseUrl)
abstract class NhlApi {
  static const _apiVersion = "v1";
  static const _baseUrl = "https://api-web.nhle.com/$_apiVersion";

  factory NhlApi(Dio dio) = _NhlApi;

  static DioException dioExceptionFromResponse(HttpResponse httpResponse) =>
      DioException(
          message: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpResponse.response.requestOptions);

  @GET("/club-schedule-season/{team}/now")
  Future<HttpResponse<ScheduleApiModel>> getSchedule(
      @Path("team") String teamTriCode);
}
