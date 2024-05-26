import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  String name;
  String institution;
  VoidCallback funcionDelete;
  VoidCallback funcionEdit;
  ItemCard({
    required this.name,
    required this.institution,
    required this.funcionDelete,
    required this.funcionEdit,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      subtitle: Text(institution),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: funcionEdit,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: funcionDelete,
          ),
        ],
      ),
    );
  }
}
