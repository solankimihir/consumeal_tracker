import 'package:flutter/material.dart';

class AddItemsInMaster extends StatefulWidget {
  const AddItemsInMaster({super.key});

  @override
  State<AddItemsInMaster> createState() => _AddItemsInMasterState();
}

class _AddItemsInMasterState extends State<AddItemsInMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Item Master",
        ),
      ),
      body: Column(
        children: [Text("Add Items in Item Master")],
      ),
    );
  }
}
