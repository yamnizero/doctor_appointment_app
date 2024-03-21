import 'package:dio/dio.dart';
import 'package:doctoe_appointment_app/core/network/api_constants.dart';
import 'package:doctoe_appointment_app/features/login/data/models/login_request_body.dart';
import 'package:doctoe_appointment_app/features/login/data/models/login_response.dart';
import 'package:doctoe_appointment_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctoe_appointment_app/features/sign_up/data/models/sign_up_response.dart';


import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}

  // part 'api_service.g.dart';
 // dart run build_runner build --delete-conflicting-outputs