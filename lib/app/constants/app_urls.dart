import 'package:templateapp/app/constants/environment_config.dart';

class AppUrls {
  static const String apiPreUrl = "https://api.themoviedb.org/3";
  static const String apiDevUrl = "https://api.themoviedb.org/3";
  static const String apiProdUrl = "https://api.themoviedb.org/3";

  static const String getAllObject = '/movie/popular';

  static String getApiUrl() {
    String apiUrl = '';
    switch (EnvironmentConfig.environment) {
      case 'pre':
        apiUrl = apiPreUrl;
        break;
      case 'dev':
        apiUrl = apiDevUrl;
        break;
      case 'prod':
        apiUrl = apiProdUrl;
        break;
      default:
        apiUrl = apiProdUrl;
        break;
    }

    return apiUrl;
  }
}
