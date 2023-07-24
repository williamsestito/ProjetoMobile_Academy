import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/app/core/widget/todo_list_field.dart';
import 'package:todo_list_provider/app/core/widget/todo_list_logo.dart';
import 'package:todo_list_provider/app/modules/auth/login/login_controller.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: LayoutBuilder(
            builder: (context, constraints){
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                    minWidth: constraints.maxWidth,
                     ),
                     child: IntrinsicHeight(
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 130,),
                          const TodoListLogo(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                            child: Form(
                              child: Column(
                                children: [
                                  const TodoListField(label: 'E-mail'),
                                  const SizedBox(height: 20,),
                                  const TodoListField(label: 'Senha'),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: (){}, 
                                        child: const Text('Esqueceu sua senha?',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: (){}, 
                                          child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: const Text('Entrar'),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          )
                                        ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ) ,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const  Color(0xffF0F3F7),
                                border: Border(
                                  top: BorderSide(width: 2,
                                  color: Colors.grey.withAlpha(50),  
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const SizedBox(height: 30,),
                         
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Não tem cadastro? ',
                                       style: TextStyle(
                                          fontSize: 10,
                                        ),),
                                      TextButton(onPressed: (){}, 
                                      child: const Text('Cadastre-se',
                                       style: TextStyle(
                                          fontSize: 10,
                                        ),),
                                      ),
                                    ],
                                  ),
                                          Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Precisa de Ajuda? ',
                                       style: TextStyle(
                                          fontSize: 10,
                                        ),),
                                      TextButton(onPressed: (){}, 
                                      child: const Text('Clique aqui',
                                       style: TextStyle(
                                          fontSize: 10,
                                        ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ) 
                      ),
                     ),
              );
            },
           ),
       );
  }
} 