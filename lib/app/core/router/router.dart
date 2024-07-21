import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/view/home_view.dart';
import 'package:flutter_application_1/app/modules/inventory/view/inventory_view.dart';
import 'package:flutter_application_1/app/modules/logistic/view/logistic_view.dart';
import 'package:flutter_application_1/app/modules/product_description/view/product_description_view.dart';
import 'package:flutter_application_1/app/modules/report/view/report_view.dart';
import 'package:flutter_application_1/app/modules/sales/view/sales_view.dart';
import 'package:flutter_application_1/app/modules/scanner/view/scanner_view.dart';
import 'package:flutter_application_1/app/modules/sign_in/view/sign_in_view.dart';
import 'package:flutter_application_1/app/modules/splash/view/splash_view.dart';
import 'package:flutter_application_1/app/modules/supply/view/supply_view.dart';
import 'package:flutter_application_1/app/modules/track_order/view/track_order_view.dart';
import 'package:flutter_application_1/app/modules/track_order/widget/track_order_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

///
/// for getting routers that are present in the app
///
///
final globalNavigatorKey = GlobalKey<NavigatorState>();
final bottomNavKey = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: SplashView.routeName,
      navigatorKey: globalNavigatorKey,
      routes: [
        GoRoute(
          path: SplashView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, const SplashView()),
        ),
        GoRoute(
          path: HomeView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, HomeView()),
        ),
        GoRoute(
          path: QrScannerScreen.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, QrScannerScreen()),
        ),
        GoRoute(
          path: LogisticView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, LogisticView()),
        ),
        GoRoute(
          path: SupplyView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, SupplyView()),
        ),
        GoRoute(
          path: ProductDescriptionView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, ProductDescriptionView()),
        ),
        GoRoute(
          path: TrackOrderWidget.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, TrackOrderWidget()),
        ),
        GoRoute(
          path: InventoryView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, InventoryView()),
        ),
        GoRoute(
          path: SalesView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, SalesView()),
        ),
        GoRoute(
          path: ReportView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, ReportView()),
        ),
        GoRoute(
          path: TrackOrderView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, TrackOrderView()),
        ),
        GoRoute(
          path: SignInView.routeName,
          pageBuilder: (context, state) =>
              appTransiton(context, state, SignInView()),
        ),
      ],
    );
  },
);

CustomTransitionPage appTransiton(
    BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
