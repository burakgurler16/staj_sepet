import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:staj_sepet/model/api_deneme.dart';
import 'package:staj_sepet/model/sepet_model.dart';

// class Service {
//   final String sepetUrl = 'https://www.overdokids.com/sermobileboss/get_cart';
//   Future<Album> fetchAlbum() async {
//     final response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
//       // Send authorization headers to the backend.
//       headers: {
//         HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
//       },
//     );
//     final responseJson = jsonDecode(response.body);

//     return Album.fromJson(responseJson);
//   }
// }
