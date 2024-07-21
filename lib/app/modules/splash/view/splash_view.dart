import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/local_storage/app_storage.dart';
import 'package:flutter_application_1/app/modules/sign_in/view/sign_in_view.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static String routeName = '/';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  final int splashDuration = 3;

  void checkLogin() async {
    final token = await AppStorage().getToken();

    if (token?.isNotEmpty ?? false) {
      // context.push(OnboardingView.routeName);
    } else {
      context.push(SignInView.routeName);
    }
  }

  late final AnimationController controller;
  late final opacityTween = Tween(begin: 0, end: 1);
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    Timer(Duration(seconds: splashDuration), checkLogin);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => AnimatedOpacity(
            opacity: controller.value,
            duration: Duration(milliseconds: 800),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
