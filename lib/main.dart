import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_users_api_2/home.dart';
import 'package:random_users_api_2/services/api_services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ApiServicesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}