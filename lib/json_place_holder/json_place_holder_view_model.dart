import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:staj_sepet/json_place_holder/json_place_holder.dart';
import 'package:http/http.dart' as http;
import 'package:staj_sepet/model/sepet_model.dart';

abstract class JsonPlaceHolderViewModel extends State<JsonPlaceHolder> {
  final baseUrl = 'https://www.overdokids.com/sermobileboss';
  final getPath = '/get_cart';
  final Map token = {'ApiToken': '0ba108d95a36ef3228cbdb267ecddaf4'};
  bool isLoading = false;
  String errorMessage = '';

  List<Sepet>? sepetItems = [];
  Future<void> fetchSepet() async {
    final response = await http.get(
      Uri.parse('$baseUrl$getPath'),
      // Send authorization headers to the backend.
      headers: {
        'Apitoken': '0ba108d95a36ef3228cbdb267ecddaf4',
      },
    );
    // final responseJson = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      final jsonBody = jsonDecode(response.body);
      if (jsonBody is List) {
        sepetItems = jsonBody.map((e) => Sepet.fromJson(e)).toList();
      }

      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Text(response.body),
        ),
      );
    }

    // return SepetItems.fromJson(responseJson);
  }

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
