import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';

@freezed
class AppConfig with _$AppConfig {
  const AppConfig._();

  const factory AppConfig({
    String? sentryDsn,
  }) = _AppConfig;

  static Future<AppConfig> init() async {
    const sentryDsn = String.fromEnvironment('SENTRY_DSN');
    return const AppConfig(
      sentryDsn: sentryDsn,
    );
  }
}
