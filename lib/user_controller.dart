import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:loginstorage/home_page.dart';
import 'package:loginstorage/user_detail_model.dart';

class UserController extends GetxController {
  var isLoading = false.obs;
  final box = GetStorage();
  var mobileNum = TextEditingController();
  var password = TextEditingController();

  Future<void> login() async {
    try {
      isLoading(true);

      var url = Uri.parse('https://paytelrms.com/api/v1/Login');
      var headers = {
        'Content-Type': 'application/json'
      };
      var body = jsonEncode({
        "userMob": mobileNum.text,
        "latLong": "1:12:2,21:1:3",
        "deviceId": "AC-ED-5C-67-68-17",
        "deviceName": "Mobile",
        "pin": password.text,
        "mode": "Android",
        "merchantID": "1",
        "ip": "",
        "mac_id": ""
      });

      var response = await http.post(url, body: body, headers: headers);
      print("login Details ${response.body}");
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        RespString respString = RespString.fromJson(responseData['respString']);

        // Save model data to GetStorage
        box.write('respString', respString.toJson());
        Get.snackbar(
          'Successfully',
          'Login successfully.',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        print('Login successful: $responseData');
        Get.to(HomeScreen());
        // Navigate to dashboard or perform other actions after successful login
      } else {
        Get.snackbar(
          'Invalid',
          'Invalid Details.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        // Handle login failure
        throw Exception('Failed to login. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during login: $e');
      // Handle login error
      Get.snackbar('Error', 'Failed to login. Please try again.');
    } finally {
      isLoading(false);
    }
  }
}
