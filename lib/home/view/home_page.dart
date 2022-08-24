import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodello/controller/homeController.dart';
import 'package:foodello/model/ShowListing.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemCount: controller.showlist.length,
                  itemBuilder: (BuildContext context, index) {
                    var singlePost = controller.showlist[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 200,
                          width: 100,
                          child: Column(
                            children: [
                              Text(singlePost.products.data[index].name),
                              Text(singlePost.products.data[index].price
                                  .toString()),
                              Text(singlePost
                                  .products.data[index].initialQuantity
                                  .toString()),
                              Text(singlePost.products.data[index].soldQuantity
                                  .toString()),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 100,
                          child: Column(
                            children: [
                              Text('name'),
                              Text('price'),
                              Text('quantity'),
                              Text('sold'),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 100,
                          child: Column(
                            children: [
                              Text('name'),
                              Text('price'),
                              Text('quantity'),
                              Text('sold'),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
