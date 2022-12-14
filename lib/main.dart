import 'package:flutter/material.dart';
import 'package:staj_sepet/Screen/sepet_screen.dart';
import 'package:staj_sepet/json_place_holder/json_place_holder.dart';

void main() => runApp(const Sepet());

class Sepet extends StatelessWidget {
  const Sepet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Sepet', home: JsonPlaceHolder());
  }
}
