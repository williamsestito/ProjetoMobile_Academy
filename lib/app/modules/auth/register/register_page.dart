import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/ui/theme_extensions.dart';
import 'package:todo_list_provider/app/core/widget/todo_list_field.dart';
import 'package:todo_list_provider/app/core/widget/todo_list_logo.dart';

class RegisterPage extends StatelessWidget {

  const RegisterPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Novo Cadastro',
                style: TextStyle(
                  fontSize: 15,
                  color: context.primaryColor,
                ),
                ),
              ],
            ),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: ClipOval(
                child: Container(
                  color: context.primaryColor.withAlpha(20),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 20,
                    color: context.primaryColor,
                    ),
                ),
                ),
            ),
           ),
           body: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.5,
                child: const FittedBox(
                  child: TodoListLogo(),
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Form(
                  child: Column(
                    children: [
                      TodoListField(label: 'E-mail'),
                      const SizedBox(height: 20,),
                      TodoListField(label: 'Nova senha', obscureText: true,),
                      const SizedBox(height: 20,),
                      TodoListField(label: 'Confirma senha', obscureText: true,),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Salvar'),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ),
              ),
            ],
           ),
       );
  }
}