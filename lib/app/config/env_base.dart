abstract class BaseEnv {
  BaseEnv({
    required this.apiUrl,
  });

  final String apiUrl;
}

final class ProEnv extends BaseEnv {
  ProEnv()
      : super(
          apiUrl: 'https://url/',
        );
}

final class DevEnv extends BaseEnv {
  DevEnv()
      : super(
          apiUrl: 'https://url/',
        );
}
