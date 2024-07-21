// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/theme/app_theme.dart';
import 'package:flutter_application_1/app/core/theme/button_primary.dart';
import 'package:flutter_application_1/app/modules/home/view/home_view.dart';
import 'package:flutter_application_1/app/modules/sign_in/repository/sign_in_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInView extends ConsumerWidget {
  /// TODO add your comment here
  SignInView({Key? key}) : super(key: key);

  static const routeName = '/signIn';

  TextEditingController accName = TextEditingController();

  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
                vertical: MediaQuery.of(context).size.width * 0.01,
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(color: Color(0xFF0c1d2d)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In to Your Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Welocme Back! Please Proceed",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
                vertical: MediaQuery.of(context).size.width * 0.01,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                        controller: accName,
                        validator: (value) {
                          if (value?.trim() == '') {
                            return 'Please enter your account name';
                          } else if (value?.trim().length == 0) {
                            return 'Please enter your account name';
                          }
                          return null;
                        },
                        decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green)),
                          hintText: 'Enter your account name',
                          labelText: 'Account  name',
                          prefixIcon: const Icon(
                            Icons.person,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: password,
                      obscureText: true,
                      validator: (value) {
                        if (value?.trim() == '') {
                          return 'Please enter your password';
                        } else if (value?.trim().length == 0) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.green)),
                        hintText: 'Enter your password',
                        labelText: 'password',
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_rounded,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    buttonPrimary(
                        'Login',
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                        context,
                        double.infinity,
                        Color(0xFFc1e963), () {
                      if (_formKey.currentState!.validate()) {
                        context.push(HomeView.routeName);
                        // ref
                        //     .read(signInRepositoryProvider)
                        //     .login(accName.text, password.text)
                        //     .then((value) {
                        //   if (value) {
                        //     context.push(HomeView.routeName);
                        //   }
                        // });
                      }
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
