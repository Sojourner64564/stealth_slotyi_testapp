import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_colors.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_shadow_box.dart';
import 'package:stealth_slotyi_testapp/core/routes/app_router.dart';

@RoutePage()
class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        MainWrapperRoute(),
        FavoriteNewsRoute(),
      ],
      animationDuration: const Duration(seconds: 0),
      bottomNavigationBuilder: (BuildContext context, TabsRouter tabRouter){
        return  Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Container(
            height: 84,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                AppShadowBox.shadowBox1
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BottomNavigationBar(
                  onTap: tabRouter.setActiveIndex,
                  currentIndex: tabRouter.activeIndex,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: AppColors.whiteColor,
                  items: [
                    BottomNavigationBarItem(
                      label: '',
                      icon: Image.asset('assets/images/icons/newspaper_icon.png',
                        width: 36,
                        height: 27,
                      ),
                      activeIcon: Image.asset('assets/images/icons/newspaper_icon.png',
                        width: 36,
                        height: 27,
                        color: AppColors.blueColor,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Image.asset(
                        'assets/images/icons/start_newspaper_icon.png',
                        width: 41,
                        height: 33,
                      ),
                      activeIcon: Image.asset(
                        'assets/images/icons/start_newspaper_icon.png',
                        width: 41,
                        height: 33,
                        color: AppColors.blueColor,
                      ),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  /*  return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: 84,
            child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.green,
                items: [
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset('assets/images/icons/newspaper_icon.png',
                  width: 36,
                  height: 27,
                ),
              ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Image.asset(
                      'assets/images/icons/start_newspaper_icon.png',
                      width: 41,
                      height: 33,
                    ),
                  ),
            ]),
          ),
        ),
      ),
      body: Container(color: Colors.redAccent,),
    );*/
  }
}
