
import 'package:injectable/injectable.dart';

abstract class RepositoryConfig {
  String get baseUrl;
}

@prod
@Singleton(as: RepositoryConfig)
class RepositoryConfigProd implements RepositoryConfig {
  final String baseUrl = '';
}

@dev
@Singleton(as: RepositoryConfig)
class RepositoryConfigDev implements RepositoryConfig {
  final String baseUrl = '';
}
