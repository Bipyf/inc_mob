import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_page.freezed.dart';

@freezed
class NavigationPage with _$NavigationPage {
  const factory NavigationPage.welcomePage() = NavigationWelcomePage;
  const factory NavigationPage.homePage() = NavigationHomePage;
  const factory NavigationPage.supportPage() = NavigationSupportPage;
  const factory NavigationPage.verificationPage() = NavigationVerifictionPage;
  const factory NavigationPage.notificationsPage() =
      NavigationNotificationsPage;
  const factory NavigationPage.profilePage() = NavigationProfilePage;
  const factory NavigationPage.posPage() = NavigationEmpPage;
  const factory NavigationPage.jobPage() = NavigationJobPage;
  const factory NavigationPage.compPage() = NavigationCompPage;
  const factory NavigationPage.reqPage() = NavigationReqPage;
  const factory NavigationPage.mycompPage() = NavigationmycompPage;
  
}
