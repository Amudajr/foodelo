import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodello/model/ShowListing.dart';
import 'package:get/get.dart';
import 'package:foodello/services/priceListing.dart';

class HomeController extends GetxController {
  var showlist = <ShowList>[].obs;

  @override
  void onInit() {
    fetchShowList();
    super.onInit();
  }

  void fetchShowList() async {
    await Future.delayed(Duration(seconds: 1));
    var post = PriceListing.getShowList();
    showlist.value = (post as List<ShowList>?)!;
  }
}
