import 'dart:io';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {

    final nameController = TextEditingController();
    final quantityController = TextEditingController();
    final numberController = TextEditingController();
    final priceController = TextEditingController();
    final addressController = TextEditingController();

    PlatformFile? pickedFile;
    UploadTask? uploadTask;

    Future uploadFile() async{
      final path = 'Items/${pickedFile!.name}';
      final file = File(pickedFile!.path!);

      final ref = FirebaseStorage.instance.ref().child(path);
      setState(() {
        uploadTask = ref.putFile(file);
      });

      final snapshot = await uploadTask!.whenComplete(() {});

      final urlDownload = await snapshot.ref.getDownloadURL();
      print('Download Link: $urlDownload');

      setState(() {
        uploadTask = null;
      });

    }

    Future selectFile() async{
      final result = await FilePicker.platform.pickFiles();
      if (result == null) return;

      setState(() {
        pickedFile = result.files.first;
      });
    }
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Items"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextField(
            autocorrect: true,
            controller: nameController,
            decoration: decoration("Name of Item"),
          ),
          SizedBox(
            height: 24,
          ),
          TextField(
            controller: quantityController,
            decoration: decoration("Quantity Available"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 24,
          ),
          TextField(
            controller: numberController,
            decoration: decoration("Phone Number of Seller"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 24,
          ),
          TextField(
            controller: priceController,
            decoration: decoration("Price of Item (in Naira)"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 24,
          ),
          TextField(
            controller: addressController,
            decoration: decoration("Address of Seller"),
            keyboardType: TextInputType.streetAddress,
          ),
          SizedBox(
            height: 24,
          ),

          if(pickedFile != null)
            SizedBox(
              height: 50, child: Container(
                color: Colors.blue[100],
                child: Center(
                  child: Text(pickedFile!.name),
                ),
              )
              ),
          ElevatedButton(
            child: Text("Select File"),
            onPressed: selectFile,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                final item = SellerItem(
                  name: nameController.text,
                  quantity: int.parse(quantityController.text),
                  number: int.parse(numberController.text),
                  price: int.parse(priceController.text),
                  address: addressController.text,

                );
                uploadFile();

                createItem(item);

                Navigator.pop(context);
              },
              child: const Text("Add Item")),

          buildProgress(),
        ],
      ),
    );
  }
  Widget buildProgress() => StreamBuilder<TaskSnapshot>(
    stream: uploadTask?.snapshotEvents,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        final data = snapshot.data!;
        double progress = data.bytesTransferred / data.totalBytes;

        return SizedBox(
          height: 50,
          child: Stack(
            fit: StackFit.expand,
            children: [
              LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.grey,
                  color: Colors.blue[300]
              ),
              Center(
                child: Text(
                  "${(100 * progress).roundToDouble()}%",
                  style: const TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ],
          ),
        );
      } else {
        return const SizedBox(
          height: 50,
        );
      }
    },
  );

  InputDecoration decoration(String label) => InputDecoration(
    labelText: label,
    border: const OutlineInputBorder(),
  );

  // Stream<List<SellerItem>> readItems() => FirebaseFirestore.instance
  //     .collection("Items").snapshots().map((snapshot) =>
  //     snapshot.docs.map((doc) => SellerItem;

  Future createItem(SellerItem item) async {
    final docUser = FirebaseFirestore.instance.collection('item').doc();
    item.id = docUser.id;

    final json = item.toJson();
    await docUser.set(json);
  }
}


class SellerItem {
  String id;
  final String name;
  final int quantity;
  final int number;
  final int price;
  final String address;

  SellerItem({
    this.id = '',
    required this.name,
    required this.quantity,
    required this.number,
    required this.price,
    required this.address
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'quantity': quantity,
    'number': number,
    'price': price,
    'address': address
  };

  static SellerItem fromJson(Map<String, dynamic> json) => SellerItem(
      name: json['name'], quantity: json['quantity'], number: json['number'], price: json['price'], address: json['address']);
}



