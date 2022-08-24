import 'dart:convert';
import 'package:foodello/model/ShowListing.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:http/http.dart' as http;

class PriceListing {
  static Future getShowList() async {
    try {
      String baseURL = 'https://westmarket.herokuapp.com/api/v1';
      String userId = '62f4ecf82b6e81e77059b332';
      String url = baseURL + '/user/:$userId/products';
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Authorization':
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2MmY0ZWNmODJiNmU4MWU3NzA1OWIzMzIiLCJpYXQiOjE2NjAzOTM4OTMsImV4cCI6MTY2MDQ4MDI5M30.7uU4UmTv2m5go62gYugA4YSaQNrR1vK9y9XaHs3GN7c'
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((item) => ShowList.fromJson(item)).toList();
      } else {
        //throw/return an error here
        // return error;
      }
    } catch (e) {
      // throw/return an error here
    }
  }

  // static Future getShowList() async {
  //   String baseURL = 'https://westmarket.herokuapp.com/api/v1';
  //   String userId = '62f4ecf82b6e81e77059b332';
  //   String url = '$baseURL/user/:$userId/products';
  //   final response = await http.get(Uri.parse(url));
  //   List jsonResponse = json.decode(response.body) as List<dynamic>;
  //   return jsonResponse
  //       .map((item) => ShowList.fromJson(item as Map<String, dynamic>))
  //       .toList();
  // }
}
