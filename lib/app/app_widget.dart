import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_list_provider/app/core/database/sqlite_adm_connection.dart';
import 'package:todo_list_provider/app/core/ui/todo_list_ui_config.dart';
import 'package:todo_list_provider/app/modules/splash/splash_page.dart';
import 'package:todo_list_provider/app/modules/auth/auth_module.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {

  final sqliteAdmConnection = SqliteAdmConnection(); 

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver((sqliteAdmConnection));
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance?.removeObserver(sqliteAdmConnection);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List Provider",
      initialRoute: '/login',
      theme:TodoListUiConfig.theme,
      routes: {
        ...AuthModule().routers
      },
      home: SplahPage(),
    );
  }
}