import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:book_with_claen_architecture/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/config/page_route_names.dart';
import '../../../../main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeInLeft(
          duration: const Duration(milliseconds: 1000),
          child: Image.asset(
            AssetsData.logo,
          ),
        ),
        const Gap(20),
        FadeInUp(
            duration: const Duration(milliseconds: 1500),
            child: const Center(
              child: Text(
                'Read Free Books',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ))
      ],
    );
  }

  void navigateToHome() {
    Timer(
      const Duration(seconds: 3),
      () {
        navigatorKey.currentState?.pushReplacementNamed(
          PageRouteNames.home,
        );
      },
    );
  }
}
