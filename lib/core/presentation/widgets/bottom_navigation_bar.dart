import 'package:incontrol_flutter/core/presentation/cubit/app_cubit.dart';
import 'package:incontrol_flutter/core/presentation/cubit/navigation_page.dart';
import 'package:incontrol_flutter/core/presentation/widgets/app.dart';
import 'package:incontrol_flutter/features/profile/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
final secureStorage = FlutterSecureStorage();



class BottomNavigationBarincontrol extends StatelessWidget {
  const BottomNavigationBarincontrol({Key? key, required this.currentIndex})
      : super(key: key);
  final int currentIndex;

  Future<String> getuserrole() async {
     final role = await secureStorage.read(key: "idRole");
     print(" got future:"+  role!);
    return role; 
  }

  List<BottomNavigationBarItem> _itemsForRole(String role) {
    print("items in role:" + role);
    var items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
              activeIcon: Icon(LineIcons.deskpro),
              icon: Icon(LineIcons.deskpro),
              label: 'Profile',
            ),
      BottomNavigationBarItem(
              activeIcon: Icon(LineIcons.compactDisc),
              icon: Icon(LineIcons.compactDisc),
              label: 'Equipment',
            )
            
    ];
    if (role == 'SysAdmin' || role=='Admin') {
        items.add(BottomNavigationBarItem(
              icon: Icon(LineIcons.list),
              activeIcon: Icon(LineIcons.list),
              label: 'Requests',
            )
            );

    }
    if (role == 'Admin') {
      items.add(BottomNavigationBarItem(
              activeIcon: Icon(LineIcons.deskpro),
              icon: Icon(LineIcons.deskpro),
              label: 'Workplace',
            )
            );
      items.add(BottomNavigationBarItem(
              activeIcon: Icon(LineIcons.user),
              icon: Icon(LineIcons.user),
              label: 'Employees',
            )
            );
    }
    

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(future: getuserrole(), builder: (context, snapshot) {
      if (snapshot.connectionState != ConnectionState.done) {
        return CircularProgressIndicator();
      }
      else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
      }
      else { print("snap data:" + snapshot.data!);
    return
     Container(
      height: 76.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.12),
              offset: const Offset(0, -4),
              blurRadius: 20)
        ],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),

        child: BottomNavigationBar(
          
          selectedFontSize: 0,
          currentIndex: currentIndex,
          onTap: (index) {
            
            if (index == currentIndex)  return;
            print(currentIndex);
            switch (index) {
              case 0:
                context
                    .read<AppCubit>()
                    .navigateTo(const NavigationPage.profilePage());
                break;
              case 1:
                
                    if(snapshot.data=="Employee") {
                      context.read<AppCubit>().navigateTo(const NavigationPage.mycompPage());
                    }
                    else {
                    context.read<AppCubit>()
                    .navigateTo(const NavigationPage.compPage());
                    }
                break;
              case 2:
                context
                    .read<AppCubit>()
                    .navigateTo(const NavigationPage.reqPage());
                break;
              case 3:
                context
                    .read<AppCubit>()
                    .navigateTo(const NavigationPage.posPage());
                break;
              case 4:
                context
                    .read<AppCubit>()
                    .navigateTo(const NavigationPage.jobPage());
                break;
            }
          },
          items: _itemsForRole(snapshot.data!)
        ),
      ),
    );}
    }
    );
  }
}
