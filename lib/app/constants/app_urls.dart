import 'package:templateapp/app/constants/environment_config.dart';

class AppUrls {
  static const String apiPreUrl = 'https://url';
  static const String apiDevUrl = 'https://url';
  static const String apiProdUrl = 'https://url';

  static const String getAllObject = '/list';

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
