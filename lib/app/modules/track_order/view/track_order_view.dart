import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/track_order/widget/track_order_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TrackOrderView extends ConsumerWidget {
  /// TODO add your comment here
  TrackOrderView({Key? key}) : super(key: key);

  static const routeName = '/trackOrder';
  final List<String> imageList = [
    'https://imgs.search.brave.com/0wYiJlLC1NLyw7BHUB3tTHG97AbFZTfPMgY0oBF1qSM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvOTU0/OTYxNjYvcGhvdG8v/YXJtY2hhaXItdG8t/Z2V0LXVwLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz03YXpT/c1dIRWs5YW9OMEZv/Nk9CN0phZVlaQi1w/NnhlMnNNQ25zWWF4/WEh3PQ',
    'https://imgs.search.brave.com/9PcIN4aFc_YxcBbWmCVgZYK8yhcJx3Esdnbf1dWC2f8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU0/OTI2NjIwL3Bob3Rv/L2FybWNoYWlyLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1s/TFJfbE5WS3dvMmVp/RWwtaTVRWmxDdVBX/YnU4SkQwNlpkQkVt/YkdlWU5JPQ',
    'https://imgs.search.brave.com/OO6raxuEJEaRn7WfVHFWeFDmRKqkw_Y4QO8AQ7xeKdA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzcyLzU4LzUz/LzM2MF9GXzM3MjU4/NTM3M19keW56WEV1/bFhFbjJjSmV5RXVR/SG04N1BXaVRlTFJ0/by5qcGc',
    'https://imgs.search.brave.com/kUWzQspe1gf8Ktf1RBgvvQxwWX27PRIN1C7-25zJfcI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTIx/NzIzNDc4NS9waG90/by9jb21wdXRlci1n/ZW5lcmF0ZWQtaW1h/Z2Utb2YtYXJtLWNo/YWlyLWluLWxpdmlu/Zy1yb29tLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1kcHZl/bEVqZ2Y4RHF2d2x1/RE1kd2JOYllmUFpq/SW8yNW5zdEZyQVZ3/VUJBPQ',
  ];

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
                children: [
                  for (int i = 0; i < imageList.length; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width * 0.01,
                      ),
                      child: InkWell(
                        onTap: () {
                          context.push(TrackOrderWidget.routeName);
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.blueGrey, blurRadius: 1)
                            ],
                            border: Border.all(color: Color(0xFF0c1d2d)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(9),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(imageList[i]),
                                      fit: BoxFit.fill),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.blueGrey, blurRadius: 1)
                                  ],
                                  border: Border.all(color: Color(0xFF0c1d2d)),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(9),
                                      bottomLeft: Radius.circular(9)),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Text(
                                    "Name : Product name ",
                                    style: TextStyle(
                                        color: Color(0xFF0c1d2d),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Status : Pending ",
                                    style: TextStyle(
                                        color: Color(0xFF0c1d2d),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    "QTY : 2 ",
                                    style: TextStyle(
                                        color: Color(0xFF0c1d2d),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Date of shipping : 28/09/24",
                                    style: TextStyle(
                                        color: Color(0xFF0c1d2d),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                ],
              ),
            )),
          )
        ],
      )),
    );
  }
}
