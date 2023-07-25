import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/ui/todo_list_icons.dart';

class TodoListField extends StatelessWidget {
  final String label;
  final IconButton? suffixIconButton;
  final bool obscureText;
  final ValueNotifier<bool> obscureTextVN;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator; 

  

  TodoListField({Key? key,
    required this.label,
    this.suffixIconButton,
    this.obscureText = false,
    this.controller,
    this.validator
   }) : 
   assert(
    obscureText == true ? suffixIconButton == null : true,
    'ObscureText não pode ser enviado em conjunto com suffixIconButton'),
    obscureTextVN = ValueNotifier(obscureText),
   super(key: key);

   @override
   Widget build(BuildContext context) {
       return ValueListenableBuilder<bool>(
           valueListenable: obscureTextVN,
           builder: (_, obscureTextValue, child) {
               return TextFormField(
                controller: controller,
                validator: validator,
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
                 isDense: true,
                 suffixIcon: this.suffixIconButton ?? 
                 (obscureText == true ? IconButton(
                   onPressed: (){
                    obscureTextVN.value = !obscureTextValue;
                   }, 
                   icon: Icon(
                      !obscureTextValue 
                      ? Todo_list_icons.eye 
                      : Todo_list_icons.eye_slash, 
                     size: 15,
                     ),  
                   ) 
                   : null),
               ),
               obscureText: obscureTextValue,
              );;
           },
       );
  }
}