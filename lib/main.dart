import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales_telecom012021/app/login/controller/login_store.dart';
import 'package:sales_telecom012021/app/login/view/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginStore>(create: (_) => LoginStore()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xpro-Mobile',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
      ),
    );
  }
}
