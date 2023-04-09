import 'package:flutter/material.dart';
import 'package:sum/router/router.dart';

import 'Router/router_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: Routers.buildRoutes,
        initialRoute: RouterConfig.home
    );
  }
}