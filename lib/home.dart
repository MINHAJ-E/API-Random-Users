import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> useres=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Useres"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: useres.length,
        itemBuilder: (context,index){
        final user=useres[index];
        final email=user['email'];
        final name=user['name']['first'];
        final imageurl=user['picture']['thumbnail'];
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(imageurl)),
            title: Text(name.toString(),style: TextStyle(color: Colors.red),),
            subtitle: Text(email),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }

  void fetchUsers()async{
    const url="https://randomuser.me/api/?results=10";
    final uri=Uri.parse(url);
    final response= await http.get(uri);
    final body=response.body;
    final json=jsonDecode(body);
    setState(() {
      useres=json['results'];
    });    
      print("fetchuserse completeeted");

  }
}