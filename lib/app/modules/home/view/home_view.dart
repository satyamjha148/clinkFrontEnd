import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/theme/app_theme.dart';
import 'package:flutter_application_1/app/modules/logistic/view/logistic_view.dart';
import 'package:flutter_application_1/app/modules/scanner/view/scanner_view.dart';
import 'package:flutter_application_1/app/modules/supply/view/supply_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class HomeView extends ConsumerWidget {
  /// TODO add your comment here
  HomeView({Key? key}) : super(key: key);

  static const routeName = '/home';

  List<String> imageList = [
    'assets/images/sales.png',
    'assets/images/supply.png',
    'assets/images/truck.png',
  ];

  List<String> titleLength = [
    'Sales Report',
    'Supply Chain',
    'Logistic Manganment',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: InkWell(
          onTap: () {
            context.push(QrScannerScreen.routeName);
          },
          child: CircleAvatar(
            backgroundColor: appTheme.lightTheme.primaryColor,
            radius: 30,
            child: Center(
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
                vertical: MediaQuery.of(context).size.width * 0.01,
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(color: Color(0xFF0c1d2d)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red[800],
                    radius: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello, Name",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        "Role",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.71,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < imageList.length; i++)
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.02,
                            vertical: MediaQuery.of(context).size.width * 0.02,
                          ),
                          child: InkWell(
                            onTap: () {
                              if (titleLength[i].contains('Logistic')) {
                                context.push(LogisticView.routeName);
                              } else if (titleLength[i].contains('Supply')) {
                                context.push(SupplyView.routeName);
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1,
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.width * 0.05,
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02,
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blueGrey, blurRadius: 5)
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(imageList[i]),
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    titleLength[i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
