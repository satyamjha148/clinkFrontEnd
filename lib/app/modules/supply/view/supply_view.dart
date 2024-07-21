import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/inventory/view/inventory_view.dart';
import 'package:flutter_application_1/app/modules/report/view/report_view.dart';
import 'package:flutter_application_1/app/modules/track_order/view/track_order_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SupplyView extends ConsumerWidget {
  /// TODO add your comment here
  SupplyView({Key? key}) : super(key: key);

  static const routeName = '/supply';
  final List<String> imgList = [
    'assets/images/track.png',
    'assets/images/inventory.png',
    'assets/images/report.png'
  ];

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
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                InkWell(
                  onTap: () {
                    context.push(TrackOrderView.routeName);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Colors.blueGrey)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(9))),
                    child: Column(
                      children: [
                        Spacer(),
                        Image.asset(
                          'assets/images/track.png',
                          height: 100,
                        ),
                        Spacer(),
                        Text("Track Order"),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.push(InventoryView.routeName);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Colors.blueGrey)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(9))),
                    child: Column(
                      children: [
                        Spacer(),
                        Image.asset(
                          'assets/images/inventory.png',
                          height: 100,
                        ),
                        Spacer(),
                        Text("Show Inventory"),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.push(ReportView.routeName);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Colors.blueGrey)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(9))),
                    child: Column(
                      children: [
                        Spacer(),
                        Image.asset(
                          'assets/images/report.png',
                          height: 100,
                        ),
                        Spacer(),
                        Text("Report"),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    boxShadow: [
                      BoxShadow(blurRadius: 1, color: Colors.blueGrey)
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(9),
                    ),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xFF0c1d2d),
                        radius: 40,
                        child: Icon(
                          Icons.add,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text("Add Inventory"),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
