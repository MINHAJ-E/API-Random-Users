import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:provider/provider.dart';
import 'package:random_users_api_2/model/model.dart';
import 'package:random_users_api_2/services/api_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ApiServicesProvider>(context,listen: false).fetchUsers();
  }
  // List<dynamic> useres=[];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Useres"),
        backgroundColor: Colors.amber,
      ),
      body: Consumer<ApiServicesProvider>(builder: (context,pro,child)=>
        ListView.builder(
          itemCount: pro.useres.length,
          itemBuilder: (context,index){
          Model user=pro.useres[index];
          // final email=user['email'];
          // final name=user['name']['first'];
          // final imageurl=user['picture']['thumbnail'];
          return ListTile(
              title: Text(user.gender.toString(),style: TextStyle(color: Colors.red),),
              subtitle: Text(user.email),
          );
        }),
      ),
      
      
    );
  }
}