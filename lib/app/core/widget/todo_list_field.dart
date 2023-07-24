import 'package:flutter/material.dart';

class TodoListField extends StatelessWidget {
  final String label;

  const TodoListField({Key? key,
    required this.label
   });

   @override
   Widget build(BuildContext context) {
       return TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 12, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.red)
          ),
        ),
       );
  }
}