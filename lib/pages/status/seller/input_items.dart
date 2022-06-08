import 'package:flutter/material.dart';
import 'package:moni_test/pages/status/seller/add_items.dart';

class InputItems extends StatelessWidget {
  const InputItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items for Sale"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return const AddItem();
              }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
