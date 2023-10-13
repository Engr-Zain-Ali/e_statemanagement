import 'dart:convert'; // Add this import for json decoding
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Add this import for HTTP requests

class AuthProvider with ChangeNotifier {
  bool _loding=false;
  bool get loding=>_loding;
  setLoding(bool value){
    _loding=value;
    notifyListeners();
  }
  Future<void>  login(String email, String password) async { // Make the function return a Future<void>
setLoding(true);
    try {
      http.Response response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        print("Successfully");
        setLoding(false);
      } else {
        setLoding(false);
        print("Failed");
      }

    } catch (e) {
      print(e.toString());
    }
  }
}
