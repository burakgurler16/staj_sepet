import 'package:flutter/material.dart';
import 'package:staj_sepet/json_place_holder/json_place_holder_view_model.dart';

class JsonPlaceHolderView extends JsonPlaceHolderViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            isLoading ? const CircularProgressIndicator() : const Text('API'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchSepet();
          print(sepetItems?.length);
        },
      ),
      body: ListView.builder(
        itemCount: sepetItems?.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                color: Colors.amber,
                child: Text(sepetItems?[index].name ?? 'name null')),
          );
        },
      ),
    );
  }
}
