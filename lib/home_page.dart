import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loginstorage/user_detail_model.dart';

class HomeScreen extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    // Retrieve user details from GetStorage
    RespString? userDetails = RespString.fromJson(box.read('respString'));

    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: userDetails != null
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Merchant ID: ${userDetails.merchantId}'),
                  Text('Merchant Name: ${userDetails.merchantName}'),
                  Text('Company Name: ${userDetails.companyName}'),
                  Text('Email: ${userDetails.email}'),
                  Text('Mobile Number: ${userDetails.mobileNo}'),
                  Text('Branch ID: ${userDetails.branchId}'),
                  // Add more fields as needed
                ],
              ),
            )
          : Center(
              child: Text('No user details found.'),
            ),
    );
  }
}
