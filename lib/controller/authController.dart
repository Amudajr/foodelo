// import 'package:get/get.dart';
// import 'dart:convert';

// class loginController extends GetxController{
  
//     Future<ResponseMessage> login({
//     required String phoneNumber,
//     required String password,
//   }) async {
//     try {
//       final response = await http.post(
//           Uri.parse('${Constants.baseUrl}/auth/login'),
//           body: {'phoneNumber': phoneNumber, 'password': password});
//       final data = jsonDecode(response.body);
//       if (response.statusCode == HttpStatus.ok) {
//         _pref.setString('user', jsonEncode(data['data']));
//         return ResponseMessage.fromJson(data as Map<String, dynamic>);
//       } else {
//         return ResponseMessage(
//           message: data['message'],
//           status: data['status'],
//         );
//       }
//     } catch (e) {
//       return ResponseMessage(
//         message: 'An error occur, Try again later',
//         status: 'error',
//       );
//     }
//   }
// }