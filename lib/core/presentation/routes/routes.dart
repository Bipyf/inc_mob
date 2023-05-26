import 'package:incontrol_flutter/core/presentation/cubit/app_state.dart';
import 'package:incontrol_flutter/features/home/pages/my_comp.dart';
import 'package:incontrol_flutter/features/home/pages/req_page.dart';
import 'package:incontrol_flutter/features/home/pages/comp_page.dart';
import 'package:incontrol_flutter/features/home/pages/emp_page.dart';
import 'package:incontrol_flutter/features/home/pages/home_page.dart';
import 'package:incontrol_flutter/features/authentication/login/pages/welcome_page.dart';
import 'package:incontrol_flutter/features/home/pages/job_page.dart';
import 'package:incontrol_flutter/features/notifications/pages/notifications_page.dart';
import 'package:incontrol_flutter/features/profile/pages/profile_page.dart';
import 'package:incontrol_flutter/features/support/pages/support_page.dart';
import 'package:incontrol_flutter/features/verification/pages/verification_page.dart';
import 'package:flutter/material.dart';



List<Page> onGenerateAppViewPages(
  AppState state,
  BuildContext context, //if needed
  List<Page<dynamic>> pages,
) {
  if (state.currentUser == null ) {
    // if user is not authorized
    return [
      WelcomePage.page(),

    ];

  } else {
    return state.page.map(
      welcomePage: (_) => [WelcomePage.page()],
      homePage: (_) => [HomePage.page()],
      supportPage: (_) => [SupportPage.page()],
      verificationPage: (_) => [VerificationPage.page()],
      notificationsPage: (_) => [NotificationsPage.page()],
      profilePage: (_) => [ProfilePage.page()],
      posPage: (_) => [EmpPage.page()],
      jobPage: (_) => [JobPage.page()],
      compPage: (_) => [CompPage.page()],
      reqPage: (_) => [ReqPage.page()],
      mycompPage: (_) => [MyComp.page()]
    );
  }
}
