class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://autovaq.herokuapp.com";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String user = '/user';
  static const String position = '/api/position/';
  static const String jobcat = '/api/job_catalogue/';
  static const String employee = '/api/employee/';
  static const String computer = '/api/computer/';
  static const String requests = '/api/request/';
  static const String currentUser = '/user/me';
  static const String resetPassword = '/user/password-reset';

  static const String login = '/login/';
  static const String profile = '/profiles/';
  static const String mycomp = '/mycomp/';
  static const String forsys = '/forsys/';
}
