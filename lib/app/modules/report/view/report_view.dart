// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pie_chart/pie_chart.dart';

class ReportView extends ConsumerWidget {
  /// TODO add your comment here
  ReportView({Key? key}) : super(key: key);

  static const routeName = '/report';

  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
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
                PhysicalModel(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey,
                  elevation: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child:
                          Icon(Icons.arrow_back_ios, color: Color(0xFF0c1d2d)),
                    )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02,
              vertical: MediaQuery.of(context).size.width * 0.01,
            ),
            child: Column(
              children: [PieChart(dataMap: dataMap)],
            ),
          )
        ],
      )),
    );
  }
}
