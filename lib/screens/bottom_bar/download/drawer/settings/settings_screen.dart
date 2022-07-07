import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Services and Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Dark Mode',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: Colors.black,
                ),
              ],
            ),
            //user agreement
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: GestureDetector(
                child: Row(
                  children: [
                    Text(
                      'User Agreement',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            //privacy policy
            GestureDetector(
              child: Row(
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                ],
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
            GestureDetector(
              child: Row(
                children: [
                  Text(
                    'Advanced Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                ],
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
            GestureDetector(
              child: Row(
                children: [
                  Text(
                    'Additional Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                ],
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Version',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Current Version: 1.0.0',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Update Automatically',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
