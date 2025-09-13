import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/core/services/api/api_service.dart';
import 'package:test/core/services/api/constants/endpoints.dart';
import 'package:test/features/auth/model/user_model/user_model.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class UserAPI {
  factory UserAPI(Dio dio, {String? baseUrl, ParseErrorLogger errorLogger}) =
      _UserAPI;
  @POST(TestEndpoints.login)
  Future<UserModel> userLogin(@Body() Map<String, dynamic> data);

  @POST(TestEndpoints.signUp)
  Future<UserModel> userRegister(@Body() Map<String, dynamic> data);
}

@riverpod
UserAPI userAPI(Ref ref) {
  final dio = ref.watch(dioProvider);
  return UserAPI(dio);
}
