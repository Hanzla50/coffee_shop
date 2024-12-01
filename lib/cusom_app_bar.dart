import 'package:flutter/material.dart';

AppBar CusomAppBar(title, description, context) {
  return AppBar(
      backgroundColor: Colors.teal,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
      foregroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.chevron_left,
          size: 60,
        ),
      ));
}
