import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/product_description/providers/product_description_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProductDescriptionView extends ConsumerWidget {
  ProductDescriptionView({Key? key}) : super(key: key);

  static const routeName = '/productDescription';
  final List<String> imageList = [
    'https://imgs.search.brave.com/0wYiJlLC1NLyw7BHUB3tTHG97AbFZTfPMgY0oBF1qSM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvOTU0/OTYxNjYvcGhvdG8v/YXJtY2hhaXItdG8t/Z2V0LXVwLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz03YXpT/c1dIRWs5YW9OMEZv/Nk9CN0phZVlaQi1w/NnhlMnNNQ25zWWF4/WEh3PQ',
    'https://imgs.search.brave.com/9PcIN4aFc_YxcBbWmCVgZYK8yhcJx3Esdnbf1dWC2f8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU0/OTI2NjIwL3Bob3Rv/L2FybWNoYWlyLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1s/TFJfbE5WS3dvMmVp/RWwtaTVRWmxDdVBX/YnU4SkQwNlpkQkVt/YkdlWU5JPQ',
    'https://imgs.search.brave.com/OO6raxuEJEaRn7WfVHFWeFDmRKqkw_Y4QO8AQ7xeKdA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzcyLzU4LzUz/LzM2MF9GXzM3MjU4/NTM3M19keW56WEV1/bFhFbjJjSmV5RXVR/SG04N1BXaVRlTFJ0/by5qcGc',
    'https://imgs.search.brave.com/kUWzQspe1gf8Ktf1RBgvvQxwWX27PRIN1C7-25zJfcI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTIx/NzIzNDc4NS9waG90/by9jb21wdXRlci1n/ZW5lcmF0ZWQtaW1h/Z2Utb2YtYXJtLWNo/YWlyLWluLWxpdmlu/Zy1yb29tLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1kcHZl/bEVqZ2Y4RHF2d2x1/RE1kd2JOYllmUFpq/SW8yNW5zdEZyQVZ3/VUJBPQ',
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imag = ref.watch(imagePostion);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02,
            vertical: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Icon(Icons.arrow_back_ios, color: Color(0xFF0c1d2d)),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageList[imag]),
                        fit: BoxFit.fitWidth),
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(21))),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < imageList.length; i++)
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                ref.read(imagePostion.notifier).state = i;
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(imageList[i]),
                                        fit: BoxFit.fitWidth),
                                    color: Colors.blueGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(21))),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Price : ",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0c1d2d)),
                  ),
                  Text(
                    "₹500",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0c1d2d)),
                  ),
                  Spacer(),
                  Text(
                    "QTY : ",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0c1d2d)),
                  ),
                  Text(
                    "34",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0c1d2d)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Description",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0c1d2d)),
              ),
              Text(
                "In publishing and graphic design, Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/) is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available",
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color: Colors.grey)),
                      ),
                      Text("Waiting")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        height: 3, width: 105, color: Color(0xFF0c1d2d)),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color: Colors.purple)),
                      ),
                      Text("Progress")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        height: 3, width: 105, color: Color(0xFF0c1d2d)),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color: Colors.green)),
                      ),
                      Text("Complete")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
