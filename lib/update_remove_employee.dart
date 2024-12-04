import 'package:flutter/material.dart';

class UpdateRemoveEmployee extends StatelessWidget{
  const UpdateRemoveEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> employees = [
      {'name': 'John Doe', 'position': 'Developer'},
      {'name': 'Jane Smith', 'position': 'Designer'},
    ];
    return Scaffold(
      appBar: AppBar(),
    );
  }
}