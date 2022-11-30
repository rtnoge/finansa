import 'package:finansa/pages/dashboard_page.dart';
import 'package:finansa/styles/assets.dart';
import 'package:finansa/styles/typography.dart';
import 'package:finansa/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 310,
                  height: 398,
                  margin: const EdgeInsets.only(bottom: 60),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(welcomePage),
                    ),
                  ),
                ),
              ),
              Text(
                'Effortless.\nIntegrated app.',
                style: blackTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: semiBold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    ButtonCustom(
                      width: 150,
                      onPressed: () {},
                      text: 'Get Started',
                      isPrimary: false,
                    ),
                    Spacer(),
                    ButtonCustom(
                      width: 150,
                      onPressed: () => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardPage()),
                          (route) => false),
                      text: 'Get Started',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
