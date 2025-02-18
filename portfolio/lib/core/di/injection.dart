import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async => getIt.init();

/// Environment names for different configurations
class Env {
  static const dev = 'dev';
  static const prod = 'prod';
  static const test = 'test';
}

/// Register environment-specific dependencies
@module
abstract class RegisterModule {
  // Add environment-specific dependencies here
  // Example:
  // @dev
  // @injectable
  // IApiClient get apiClient => DevApiClient();
  //
  // @prod
  // @injectable
  // IApiClient get apiClient => ProdApiClient();
}