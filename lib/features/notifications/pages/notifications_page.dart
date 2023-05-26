import 'package:incontrol_flutter/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/navigation_verify_button.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
    child: NotificationsPage(),
  );

  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: const BottomNavigationBarincontrol(currentIndex: 3),
        body:  Center(child: Text('Notifications page'))
    );
  }
}
