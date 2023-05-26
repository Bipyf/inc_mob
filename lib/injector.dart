import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

bool get isDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

@InjectableInit()
Future<void> configureDependencies({String? environment}) async{
  environment ??= isDebugMode ? Environment.dev : environment = Environment.prod;
  await $initGetIt(getIt, environment: environment);
}
