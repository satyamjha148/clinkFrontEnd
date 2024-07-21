import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TrackOrderWidget extends StatelessWidget {
  /// TODO add your comment here
  const TrackOrderWidget({Key? key}) : super(key: key);

  static const routeName = '/track';

  @override
  Widget build(BuildContext context) {
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
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.71,
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
                vertical: MediaQuery.of(context).size.width * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color: Colors.grey)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [Text("Waiting")],
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(height: 176, width: 3, color: Color(0xFF0c1d2d)),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 64,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color: Colors.purple)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [Text("Progress")],
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(height: 176, width: 3, color: Color(0xFF0c1d2d)),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color: Colors.green)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [Text("Complete")],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )),
          )
        ],
      )),
    );
  }
}
