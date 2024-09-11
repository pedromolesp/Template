part of '../dependency_inyector.dart';

void _apiModulesInit() {
  getIt.registerLazySingleton(() {
    var dioClient = DioClient();

    dioClient.addInterceptors([
      ...EnvironmentConfig.environment == 'dev'
          ? [CurlLoggerDioInterceptor(printOnSuccess: true)]
          : [],
      ...EnvironmentConfig.environment == 'mock'
          ? [
              LogInterceptor(
                responseBody: true,
                error: true,
                requestHeader: true,
                responseHeader: true,
                request: true,
                requestBody: true,
              )
            ]
          : [],
    ]);
    dioClient.addBadCertificateCallBack();

    return dioClient.getDio();
  });
}