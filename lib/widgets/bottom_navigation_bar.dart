import 'package:flutter/material.dart';
import 'package:test_task_2/models/bottom_tab.dart';
import 'package:test_task_2/my_flutter_app_icons.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final List<BottomTab> bottomNavs = const [
    BottomTab(icon: MyFlutterApp.chat, label: 'Chats'),
    BottomTab(icon: Icons.notifications_none_outlined, label: 'Notifications'),
    BottomTab(icon: Icons.more_horiz_outlined, label: 'More'),
  ];
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Material(
          elevation: 10,
          child: Row(
            children: [
              ...List.generate(
                bottomNavs.length,
                (index) => InkWell(
                  onTap: () {
                    setState(() {
                      _selectedTab = index;
                    });
                  },
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: Colors.transparent,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 2,
                          width: 40,
                          color: const Color(0xffc13a8f)
                              .withOpacity(_selectedTab == index ? 1 : 0),
                        ),
                        const SizedBox(height: 10),
                        Icon(
                          bottomNavs[index].icon,
                          color: _selectedTab == index
                              ? const Color(0xffc13a8f)
                              : Colors.grey,
                        ),
                        Text(
                          bottomNavs[index].label,
                          style: TextStyle(
                            color: _selectedTab == index
                                ? const Color(0xffc13a8f)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
