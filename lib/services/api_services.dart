// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;

// class ApiServices {
//     List<dynamic> useres=[];
//     void fetchUsers()async{
//     const url="https://randomuser.me/api/?results=10";
//     final uri=Uri.parse(url);
//     final response= await http.get(uri);
//     final body=response.body;
//     final json=jsonDecode(body);
//     // setState(() {
//       useres=json['results'];
//     // });    
//       print("fetchuserse completeeted");

  
//   }
// }