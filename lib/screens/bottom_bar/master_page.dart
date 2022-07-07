import 'package:flutter/material.dart';
import 'package:sangeet/constants.dart';
import 'package:sangeet/screens/bottom_bar/download/download_screen.dart';
import 'package:sangeet/screens/bottom_bar/download/drawer/feedback_screen.dart';
import 'package:sangeet/screens/bottom_bar/download/drawer/settings/settings_screen.dart';
import 'package:sangeet/screens/bottom_bar/online/online.dart';

int masterPageIndex = 0;

class Master extends StatefulWidget {
  static const String route = '/master';

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  @override
  Widget build(BuildContext context) {
    final screens = [
      DownloadScreen(),
      OnlineSongs(),
    ];

    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red.shade300,
                      Colors.pink.shade400,
                    ],
                  ),
                ),
              ),
              title: Text(
                'Sargam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
            ),
            drawer: Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.shade300,
                          Colors.pink.shade400,
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.shade200,
                          ),
                          child: Center(
                            child: Text(
                              "R",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 41,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rohan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "+919876543210",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => FeedbackScreen(),
                                  ),
                                );
                              });
                            },
                            child: Text(
                              'Feedback',
                              style: TextStyle(
                                color: kLightTextColor,
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade100,
                                  Colors.grey.shade400,
                                  Colors.grey.shade100,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => SettingsScreen(),
                                  ),
                                );
                              });
                            },
                            child: Text(
                              'Settings',
                              style: TextStyle(
                                color: kLightTextColor,
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade100,
                                  Colors.grey.shade400,
                                  Colors.grey.shade100,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Subscription',
                            style: TextStyle(
                              color: kLightTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade100,
                                  Colors.grey.shade400,
                                  Colors.grey.shade100,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(28),
                                  ),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container();
                                },
                              );
                            },
                            child: Text(
                              'Languages',
                              style: TextStyle(
                                color: kLightTextColor,
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade100,
                                  Colors.grey.shade400,
                                  Colors.grey.shade100,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                              color: kLightTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            body: screens[masterPageIndex],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red.shade300,
                    Colors.pink.shade400,
                  ],
                ),
              ),
              child: BottomNavigationBar(
                selectedItemColor: Colors.white,
                //showUnselectedLabels: false,
                backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                selectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Icon(
                        Icons.headphones_outlined,
                        size: 30,
                      ),
                    ),
                    label: 'My Downloads',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Icon(
                        Icons.library_music_outlined,
                        size: 30,
                      ),
                    ),
                    label: 'Online',
                  ),
                ],
                currentIndex: masterPageIndex,
                onTap: (index) => setState(() {
                  masterPageIndex = index;
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
