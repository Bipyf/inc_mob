import 'package:incontrol_flutter/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/navigation_verify_button.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: VerificationPage(),
      );

  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: NavVerifyButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:
            const BottomNavigationBarincontrol(currentIndex: 2),
        body: Center(child: Text('Verification page')));
  }
}
